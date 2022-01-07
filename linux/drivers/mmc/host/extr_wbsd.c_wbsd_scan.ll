; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32 }

@config_ports = common dso_local global i32* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@unlock_codes = common dso_local global i32* null, align 8
@WBSD_CONF_ID_HI = common dso_local global i32 0, align 4
@WBSD_CONF_ID_LO = common dso_local global i32 0, align 4
@valid_ids = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unknown hardware (id %x) found at %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wbsd_host*)* @wbsd_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsd_scan(%struct.wbsd_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %122, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** @config_ports, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %125

13:                                               ; preds = %8
  %14 = load i32*, i32** @config_ports, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRIVER_NAME, align 4
  %20 = call i32 @request_region(i32 %18, i32 2, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %122

23:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %112, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** @unlock_codes, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %24
  store i32 65535, i32* %7, align 4
  %30 = load i32*, i32** @config_ports, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %36 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** @unlock_codes, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %43 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %45 = call i32 @wbsd_unlock_config(%struct.wbsd_host* %44)
  %46 = load i32, i32* @WBSD_CONF_ID_HI, align 4
  %47 = load i32*, i32** @config_ports, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @outb(i32 %46, i32 %51)
  %53 = load i32*, i32** @config_ports, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @inb(i32 %58)
  %60 = shl i32 %59, 8
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @WBSD_CONF_ID_LO, align 4
  %62 = load i32*, i32** @config_ports, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @outb(i32 %61, i32 %66)
  %68 = load i32*, i32** @config_ports, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @inb(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %78 = call i32 @wbsd_lock_config(%struct.wbsd_host* %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %97, %29
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** @valid_ids, align 8
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** @valid_ids, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %95 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %132

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %79

100:                                              ; preds = %79
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 65535
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** @config_ports, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %103, %100
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %24

115:                                              ; preds = %24
  %116 = load i32*, i32** @config_ports, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @release_region(i32 %120, i32 2)
  br label %122

122:                                              ; preds = %115, %22
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %8

125:                                              ; preds = %8
  %126 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %127 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %129 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %125, %92
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @wbsd_unlock_config(%struct.wbsd_host*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @wbsd_lock_config(%struct.wbsd_host*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
