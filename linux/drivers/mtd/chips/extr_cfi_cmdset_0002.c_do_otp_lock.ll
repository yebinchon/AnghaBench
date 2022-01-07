; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_do_otp_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_do_otp_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32 }
%struct.flchip = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FL_LOCKING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Waiting for chip to be ready timed out.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)* @do_otp_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_otp_lock(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.map_info*, align 8
  %9 = alloca %struct.flchip*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cfi_private*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %8, align 8
  store %struct.flchip* %1, %struct.flchip** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.map_info*, %struct.map_info** %8, align 8
  %19 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 0
  %20 = load %struct.cfi_private*, %struct.cfi_private** %19, align 8
  store %struct.cfi_private* %20, %struct.cfi_private** %14, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %154

30:                                               ; preds = %23
  %31 = load %struct.flchip*, %struct.flchip** %9, align 8
  %32 = getelementptr inbounds %struct.flchip, %struct.flchip* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.map_info*, %struct.map_info** %8, align 8
  %35 = load %struct.flchip*, %struct.flchip** %9, align 8
  %36 = load %struct.flchip*, %struct.flchip** %9, align 8
  %37 = getelementptr inbounds %struct.flchip, %struct.flchip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FL_LOCKING, align 4
  %40 = call i32 @get_chip(%struct.map_info* %34, %struct.flchip* %35, i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.flchip*, %struct.flchip** %9, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %7, align 4
  br label %154

48:                                               ; preds = %30
  %49 = load i32, i32* @FL_LOCKING, align 4
  %50 = load %struct.flchip*, %struct.flchip** %9, align 8
  %51 = getelementptr inbounds %struct.flchip, %struct.flchip* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %53 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.flchip*, %struct.flchip** %9, align 8
  %56 = getelementptr inbounds %struct.flchip, %struct.flchip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.map_info*, %struct.map_info** %8, align 8
  %59 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %60 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %61 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cfi_send_gen_cmd(i32 170, i32 %54, i32 %57, %struct.map_info* %58, %struct.cfi_private* %59, i32 %62, i32* null)
  %64 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %65 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.flchip*, %struct.flchip** %9, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.map_info*, %struct.map_info** %8, align 8
  %71 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %72 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %73 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cfi_send_gen_cmd(i32 85, i32 %66, i32 %69, %struct.map_info* %70, %struct.cfi_private* %71, i32 %74, i32* null)
  %76 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %77 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.flchip*, %struct.flchip** %9, align 8
  %80 = getelementptr inbounds %struct.flchip, %struct.flchip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.map_info*, %struct.map_info** %8, align 8
  %83 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %84 = load %struct.cfi_private*, %struct.cfi_private** %14, align 8
  %85 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cfi_send_gen_cmd(i32 64, i32 %78, i32 %81, %struct.map_info* %82, %struct.cfi_private* %83, i32 %86, i32* null)
  %88 = load %struct.map_info*, %struct.map_info** %8, align 8
  %89 = call i32 @cfi_read_query(%struct.map_info* %88, i32 0)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, -2
  store i32 %91, i32* %15, align 4
  %92 = load %struct.map_info*, %struct.map_info** %8, align 8
  %93 = call i32 @CMD(i32 160)
  %94 = load %struct.flchip*, %struct.flchip** %9, align 8
  %95 = getelementptr inbounds %struct.flchip, %struct.flchip* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @map_write(%struct.map_info* %92, i32 %93, i32 %96)
  %98 = load %struct.map_info*, %struct.map_info** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @CMD(i32 %99)
  %101 = load %struct.flchip*, %struct.flchip** %9, align 8
  %102 = getelementptr inbounds %struct.flchip, %struct.flchip* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @map_write(%struct.map_info* %98, i32 %100, i32 %103)
  %105 = load i64, i64* @jiffies, align 8
  %106 = call i64 @msecs_to_jiffies(i32 2)
  %107 = add i64 %105, %106
  store i64 %107, i64* %16, align 8
  br label %108

108:                                              ; preds = %124, %48
  %109 = load %struct.map_info*, %struct.map_info** %8, align 8
  %110 = load %struct.flchip*, %struct.flchip** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @chip_ready(%struct.map_info* %109, %struct.flchip* %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %128

115:                                              ; preds = %108
  %116 = load i64, i64* @jiffies, align 8
  %117 = load i64, i64* %16, align 8
  %118 = call i64 @time_after(i64 %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %17, align 4
  br label %128

124:                                              ; preds = %115
  %125 = load %struct.map_info*, %struct.map_info** %8, align 8
  %126 = load %struct.flchip*, %struct.flchip** %9, align 8
  %127 = call i32 @UDELAY(%struct.map_info* %125, %struct.flchip* %126, i32 0, i32 1)
  br label %108

128:                                              ; preds = %120, %114
  %129 = load %struct.map_info*, %struct.map_info** %8, align 8
  %130 = call i32 @CMD(i32 144)
  %131 = load %struct.flchip*, %struct.flchip** %9, align 8
  %132 = getelementptr inbounds %struct.flchip, %struct.flchip* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @map_write(%struct.map_info* %129, i32 %130, i32 %133)
  %135 = load %struct.map_info*, %struct.map_info** %8, align 8
  %136 = call i32 @CMD(i32 0)
  %137 = load %struct.flchip*, %struct.flchip** %9, align 8
  %138 = getelementptr inbounds %struct.flchip, %struct.flchip* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @map_write(%struct.map_info* %135, i32 %136, i32 %139)
  %141 = load i32, i32* @FL_READY, align 4
  %142 = load %struct.flchip*, %struct.flchip** %9, align 8
  %143 = getelementptr inbounds %struct.flchip, %struct.flchip* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.map_info*, %struct.map_info** %8, align 8
  %145 = load %struct.flchip*, %struct.flchip** %9, align 8
  %146 = load %struct.flchip*, %struct.flchip** %9, align 8
  %147 = getelementptr inbounds %struct.flchip, %struct.flchip* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @put_chip(%struct.map_info* %144, %struct.flchip* %145, i32 %148)
  %150 = load %struct.flchip*, %struct.flchip** %9, align 8
  %151 = getelementptr inbounds %struct.flchip, %struct.flchip* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %128, %43, %27
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfi_send_gen_cmd(i32, i32, i32, %struct.map_info*, %struct.cfi_private*, i32, i32*) #1

declare dso_local i32 @cfi_read_query(%struct.map_info*, i32) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i32) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @chip_ready(%struct.map_info*, %struct.flchip*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @UDELAY(%struct.map_info*, %struct.flchip*, i32, i32) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
