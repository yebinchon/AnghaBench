; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sdhci_s3c = type { i32, i32*, %struct.clk**, %struct.TYPE_4__* }
%struct.clk = type { i32 }
%struct.TYPE_4__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@MAX_BUS_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"selected source %d, clock %d, delta %d\0A\00", align 1
@SDHCI_CLOCK_CONTROL = common dso_local global i64 0, align 8
@S3C_SDHCI_CONTROL2 = common dso_local global i64 0, align 8
@S3C_SDHCI_CTRL2_SELBASECLK_MASK = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_SELBASECLK_SHIFT = common dso_local global i32 0, align 4
@S3C64XX_SDHCI_CONTROL4_DRIVE_9mA = common dso_local global i32 0, align 4
@S3C64XX_SDHCI_CONTROL4 = common dso_local global i64 0, align 8
@S3C64XX_SDHCI_CTRL2_ENSTAASYNCCLR = common dso_local global i32 0, align 4
@S3C64XX_SDHCI_CTRL2_ENCMDCNFMSK = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_ENFBCLKRX = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_DFCNT_NONE = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_ENCLKOUTHOLD = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL3_FCSEL1 = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL3_FCSEL0 = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL3_FCSEL3 = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL3_FCSEL2 = common dso_local global i32 0, align 4
@S3C_SDHCI_CONTROL3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_s3c_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_s3c_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_s3c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %12)
  store %struct.sdhci_s3c* %13, %struct.sdhci_s3c** %5, align 8
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @sdhci_set_clock(%struct.sdhci_host* %22, i32 %23)
  br label %179

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MAX_BUS_CLK, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %47 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %55 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %45
  %60 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %61 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %60, i32 0, i32 2
  %62 = load %struct.clk**, %struct.clk*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.clk*, %struct.clk** %62, i64 %64
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  store %struct.clk* %66, %struct.clk** %11, align 8
  %67 = load %struct.clk*, %struct.clk** %11, align 8
  %68 = call i32 @clk_prepare_enable(%struct.clk* %67)
  %69 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %70 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %59
  %74 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %75 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %74, i32 0, i32 2
  %76 = load %struct.clk**, %struct.clk*** %75, align 8
  %77 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %78 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.clk*, %struct.clk** %76, i64 %80
  %82 = load %struct.clk*, %struct.clk** %81, align 8
  %83 = call i32 @clk_disable_unprepare(%struct.clk* %82)
  br label %84

84:                                               ; preds = %73, %59
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %87 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %89 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %84, %45
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %99 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SDHCI_CLOCK_CONTROL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writew(i32 0, i64 %102)
  %104 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %105 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %121 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load i32, i32* @S3C64XX_SDHCI_CONTROL4_DRIVE_9mA, align 4
  %127 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %128 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @S3C64XX_SDHCI_CONTROL4, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  %133 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %134 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @readl(i64 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* @S3C64XX_SDHCI_CTRL2_ENSTAASYNCCLR, align 4
  %140 = load i32, i32* @S3C64XX_SDHCI_CTRL2_ENCMDCNFMSK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @S3C_SDHCI_CTRL2_ENFBCLKRX, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @S3C_SDHCI_CTRL2_DFCNT_NONE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @S3C_SDHCI_CTRL2_ENCLKOUTHOLD, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %152 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load i32, i32* @S3C_SDHCI_CTRL3_FCSEL1, align 4
  %158 = load i32, i32* @S3C_SDHCI_CTRL3_FCSEL0, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ult i32 %160, 25000000
  br i1 %161, label %162, label %168

162:                                              ; preds = %97
  %163 = load i32, i32* @S3C_SDHCI_CTRL3_FCSEL3, align 4
  %164 = load i32, i32* @S3C_SDHCI_CTRL3_FCSEL2, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %10, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %162, %97
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %171 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @S3C_SDHCI_CONTROL3, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  %176 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @sdhci_set_clock(%struct.sdhci_host* %176, i32 %177)
  br label %179

179:                                              ; preds = %168, %21
  ret void
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
