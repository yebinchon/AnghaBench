; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_initialize_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_initialize_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i32, %struct.tifm_dev* }
%struct.tifm_dev = type { i64, i32 }

@SOCK_MMCSD_INT_ENABLE = common dso_local global i64 0, align 8
@TIFM_MMCSD_RESET = common dso_local global i32 0, align 4
@SOCK_MMCSD_SYSTEM_CONTROL = common dso_local global i64 0, align 8
@TIFM_MMCSD_POWER = common dso_local global i32 0, align 4
@SOCK_MMCSD_CONFIG = common dso_local global i64 0, align 8
@SOCK_MMCSD_SYSTEM_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s : controller failed to reset\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SOCK_MMCSD_NUM_BLOCKS = common dso_local global i64 0, align 8
@TIFM_MMCSD_RXDE = common dso_local global i32 0, align 4
@SOCK_MMCSD_BUFFER_CONFIG = common dso_local global i64 0, align 8
@SOCK_MMCSD_COMMAND_TO = common dso_local global i64 0, align 8
@TIFM_MMCSD_INAB = common dso_local global i32 0, align 4
@SOCK_MMCSD_COMMAND = common dso_local global i64 0, align 8
@SOCK_MMCSD_STATUS = common dso_local global i64 0, align 8
@TIFM_MMCSD_ERRMASK = common dso_local global i32 0, align 4
@TIFM_MMCSD_EOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s : card not ready - probe failed on initialization\0A\00", align 1
@TIFM_MMCSD_CERR = common dso_local global i32 0, align 4
@TIFM_MMCSD_BRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_sd*)* @tifm_sd_initialize_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_sd_initialize_host(%struct.tifm_sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tifm_dev*, align 8
  store %struct.tifm_sd* %0, %struct.tifm_sd** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %8 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %7, i32 0, i32 2
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  store %struct.tifm_dev* %9, %struct.tifm_dev** %6, align 8
  %10 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %11 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %17 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %16, i32 0, i32 0
  store i32 61, i32* %17, align 8
  %18 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %19 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %18, i32 0, i32 1
  store i32 20000000, i32* %19, align 4
  %20 = load i32, i32* @TIFM_MMCSD_RESET, align 4
  %21 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %22 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_MMCSD_SYSTEM_CONTROL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %28 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TIFM_MMCSD_POWER, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %33 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  store i32 32, i32* %4, align 4
  br label %38

38:                                               ; preds = %54, %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 256
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %43 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SOCK_MMCSD_SYSTEM_STATUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  %48 = and i32 1, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @msleep(i32 %52)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %38

57:                                               ; preds = %50, %38
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %62 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %61, i32 0, i32 1
  %63 = call i32 @dev_name(i32* %62)
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %162

67:                                               ; preds = %57
  %68 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %69 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCK_MMCSD_NUM_BLOCKS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  %74 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %75 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TIFM_MMCSD_POWER, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %80 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SOCK_MMCSD_CONFIG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* @TIFM_MMCSD_RXDE, align 4
  %86 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %87 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SOCK_MMCSD_BUFFER_CONFIG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %93 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SOCK_MMCSD_COMMAND_TO, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 64, i64 %96)
  %98 = load i32, i32* @TIFM_MMCSD_INAB, align 4
  %99 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %100 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SOCK_MMCSD_COMMAND, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  store i32 16, i32* %4, align 4
  br label %105

105:                                              ; preds = %135, %67
  %106 = load i32, i32* %4, align 4
  %107 = icmp sle i32 %106, 64
  br i1 %107, label %108, label %138

108:                                              ; preds = %105
  %109 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %110 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SOCK_MMCSD_STATUS, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %117 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SOCK_MMCSD_STATUS, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @TIFM_MMCSD_ERRMASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %108
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @TIFM_MMCSD_EOC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %138

132:                                              ; preds = %126, %108
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @msleep(i32 %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = shl i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %105

138:                                              ; preds = %131, %105
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %143 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %142, i32 0, i32 1
  %144 = call i32 @dev_name(i32* %143)
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %162

148:                                              ; preds = %138
  %149 = load i32, i32* @TIFM_MMCSD_CERR, align 4
  %150 = load i32, i32* @TIFM_MMCSD_BRS, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @TIFM_MMCSD_EOC, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @TIFM_MMCSD_ERRMASK, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  %157 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %148, %141, %60
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
