; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cpld_info_ver3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cpld_info_ver3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"CPLD System control register (read/write)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\09\09System control:  0x%04x (0x0f00)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"CPLD Clock control register (read/write)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\09\09Clock control:   0x%04x (0x0000)\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"CPLD HSMA Clk Osc register (read/write) - Must set wr trigger to load default values\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\09\09Register #7:\090x%04x (0x0022)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09\09Register #8:\090x%04x (0x0047)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\09\09Register #9:\090x%04x (0x00fa)\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\09\09Register #10:\090x%04x (0x0061)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\09\09Register #11:\090x%04x (0x001e)\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\09\09Register #12:\090x%04x (0x0045)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09\09Register #135:\090x%04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\09\09Register #137:\090x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"CPLD System status register (read only)\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\09\09System status:  0x%04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"CPLD MAXII info register (read only)\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\09\09Board serial number:     0x%04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\09\09MAXII program revision:  0x%04x\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"CPLD temp and voltage ADT7411 registers (read only)\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\09\09Board temperature:  %u Celsius\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"\09\09FPGA temperature:   %u Celsius\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"\09\09VDD 3V3:      %u,%03uV\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch3 5V:   %u,%03uV\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch4 3V:   %u,%03uV\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch5 2V5:  %u,%03uV\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch6 1V8:  %u,%03uV\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch7 1V5:  %u,%03uV\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\09\09ADC ch8 0V9:  %u,%03uV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*)* @cpld_info_ver3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpld_info_ver3(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %5 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %7 = call i32 @cpld_read(%struct.cobalt* %6, i32 0)
  %8 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %10 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %11 = call i32 @cpld_read(%struct.cobalt* %10, i32 4)
  %12 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %14 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %15 = call i32 @cpld_read(%struct.cobalt* %14, i32 8)
  %16 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %18 = call i32 @cpld_read(%struct.cobalt* %17, i32 12)
  %19 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %21 = call i32 @cpld_read(%struct.cobalt* %20, i32 16)
  %22 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %24 = call i32 @cpld_read(%struct.cobalt* %23, i32 20)
  %25 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %24)
  %26 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %27 = call i32 @cpld_read(%struct.cobalt* %26, i32 24)
  %28 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %27)
  %29 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %30 = call i32 @cpld_read(%struct.cobalt* %29, i32 28)
  %31 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %33 = call i32 @cpld_read(%struct.cobalt* %32, i32 32)
  %34 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  %35 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %36 = call i32 @cpld_read(%struct.cobalt* %35, i32 36)
  %37 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %39 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %40 = call i32 @cpld_read(%struct.cobalt* %39, i32 40)
  %41 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %43 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %44 = call i32 @cpld_read(%struct.cobalt* %43, i32 44)
  %45 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %44)
  %46 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %47 = call i32 @cpld_read(%struct.cobalt* %46, i32 48)
  %48 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0))
  %50 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %51 = call i32 @cpld_read(%struct.cobalt* %50, i32 52)
  %52 = sdiv i32 %51, 4
  %53 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %52)
  %54 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %55 = call i32 @cpld_read(%struct.cobalt* %54, i32 56)
  %56 = sdiv i32 %55, 4
  %57 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %56)
  %58 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %59 = call i32 @cpld_read(%struct.cobalt* %58, i32 60)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = mul nsw i32 %60, 33
  %62 = mul nsw i32 %61, 1000
  %63 = sdiv i32 %62, 4830
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sdiv i32 %64, 1000
  %66 = load i32, i32* %4, align 4
  %67 = srem i32 %66, 1000
  %68 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %70 = call i32 @cpld_read(%struct.cobalt* %69, i32 64)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = mul nsw i32 %71, 74
  %73 = mul nsw i32 %72, 2197
  %74 = sdiv i32 %73, 27000
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sdiv i32 %75, 1000
  %77 = load i32, i32* %4, align 4
  %78 = srem i32 %77, 1000
  %79 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %81 = call i32 @cpld_read(%struct.cobalt* %80, i32 68)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = mul nsw i32 %82, 74
  %84 = mul nsw i32 %83, 2197
  %85 = sdiv i32 %84, 47000
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sdiv i32 %86, 1000
  %88 = load i32, i32* %4, align 4
  %89 = srem i32 %88, 1000
  %90 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 %87, i32 %89)
  %91 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %92 = call i32 @cpld_read(%struct.cobalt* %91, i32 72)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = mul nsw i32 %93, 57
  %95 = mul nsw i32 %94, 2197
  %96 = sdiv i32 %95, 47000
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sdiv i32 %97, 1000
  %99 = load i32, i32* %4, align 4
  %100 = srem i32 %99, 1000
  %101 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %98, i32 %100)
  %102 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %103 = call i32 @cpld_read(%struct.cobalt* %102, i32 76)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = mul nsw i32 %104, 2197
  %106 = sdiv i32 %105, 1000
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = sdiv i32 %107, 1000
  %109 = load i32, i32* %4, align 4
  %110 = srem i32 %109, 1000
  %111 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %113 = call i32 @cpld_read(%struct.cobalt* %112, i32 80)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = mul nsw i32 %114, 2197
  %116 = sdiv i32 %115, 1000
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sdiv i32 %117, 1000
  %119 = load i32, i32* %4, align 4
  %120 = srem i32 %119, 1000
  %121 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %118, i32 %120)
  %122 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %123 = call i32 @cpld_read(%struct.cobalt* %122, i32 84)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = mul nsw i32 %124, 2197
  %126 = sdiv i32 %125, 1000
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = sdiv i32 %127, 1000
  %129 = load i32, i32* %4, align 4
  %130 = srem i32 %129, 1000
  %131 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %128, i32 %130)
  ret void
}

declare dso_local i32 @cobalt_info(i8*, ...) #1

declare dso_local i32 @cpld_read(%struct.cobalt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
