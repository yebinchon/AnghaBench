; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32 }
%struct.s3cmci_host = type { i32, i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@S3C2410_SDICON = common dso_local global i64 0, align 8
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C2410_SDICON_FIFORESET = common dso_local global i32 0, align 4
@S3C2440_SDICON_SDRESET = common dso_local global i32 0, align 4
@S3C2410_SDICON_CLOCKTYPE = common dso_local global i32 0, align 4
@dbg_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"running at %lukHz (requested: %ukHz).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"powered down.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @s3cmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.s3cmci_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.s3cmci_host* %8, %struct.s3cmci_host** %5, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S3C2410_SDICON, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %62 [
    i32 129, label %18
    i32 128, label %18
    i32 130, label %61
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %20 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %19, i32 0, i32 5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = call i32 @S3C2410_GPE(i32 5)
  %28 = call i32 @S3C_GPIO_SFN(i32 2)
  %29 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %30 = call i32 @s3c_gpio_cfgall_range(i32 %27, i32 6, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %33 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = icmp ne i32 (i32, i32)* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %40 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %43(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %31
  %52 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %53 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @S3C2410_SDICON_FIFORESET, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %51
  br label %103

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %2, %61
  %63 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %64 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %63, i32 0, i32 5
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = call i32 @S3C2410_GPE(i32 5)
  %72 = call i32 @gpio_direction_output(i32 %71, i32 0)
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %75 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @S3C2440_SDICON_SDRESET, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %84 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = icmp ne i32 (i32, i32)* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %91 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %94(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %89, %82
  br label %103

103:                                              ; preds = %102, %60
  %104 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %105 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %106 = call i32 @s3cmci_set_clk(%struct.s3cmci_host* %104, %struct.mmc_ios* %105)
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @S3C2410_SDICON_CLOCKTYPE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %120

115:                                              ; preds = %103
  %116 = load i32, i32* @S3C2410_SDICON_CLOCKTYPE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %115, %111
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %123 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @S3C2410_SDICON, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %129 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 129
  br i1 %131, label %137, label %132

132:                                              ; preds = %120
  %133 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %134 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %137, label %149

137:                                              ; preds = %132, %120
  %138 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %139 = load i32, i32* @dbg_conf, align 4
  %140 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %141 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 1000
  %144 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %145 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %146, 1000
  %148 = call i32 (%struct.s3cmci_host*, i32, i8*, ...) @dbg(%struct.s3cmci_host* %138, i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %147)
  br label %153

149:                                              ; preds = %132
  %150 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %151 = load i32, i32* @dbg_conf, align 4
  %152 = call i32 (%struct.s3cmci_host*, i32, i8*, ...) @dbg(%struct.s3cmci_host* %150, i32 %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %137
  %154 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %155 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.s3cmci_host*, %struct.s3cmci_host** %5, align 8
  %158 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  ret void
}

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @s3c_gpio_cfgall_range(i32, i32, i32, i32) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @s3cmci_set_clk(%struct.s3cmci_host*, %struct.mmc_ios*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
