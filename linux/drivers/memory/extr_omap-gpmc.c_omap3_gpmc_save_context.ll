; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_omap3_gpmc_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_omap3_gpmc_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@gpmc_base = common dso_local global i32 0, align 4
@GPMC_SYSCONFIG = common dso_local global i32 0, align 4
@gpmc_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GPMC_IRQENABLE = common dso_local global i32 0, align 4
@GPMC_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@GPMC_CONFIG = common dso_local global i32 0, align 4
@GPMC_PREFETCH_CONFIG1 = common dso_local global i32 0, align 4
@GPMC_PREFETCH_CONFIG2 = common dso_local global i32 0, align 4
@GPMC_PREFETCH_CONTROL = common dso_local global i32 0, align 4
@gpmc_cs_num = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG1 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG2 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG3 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG4 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG5 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG6 = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_gpmc_save_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @gpmc_base, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %100

5:                                                ; preds = %0
  %6 = load i32, i32* @GPMC_SYSCONFIG, align 4
  %7 = call i8* @gpmc_read_reg(i32 %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 7), align 8
  %8 = load i32, i32* @GPMC_IRQENABLE, align 4
  %9 = call i8* @gpmc_read_reg(i32 %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 6), align 8
  %10 = load i32, i32* @GPMC_TIMEOUT_CONTROL, align 4
  %11 = call i8* @gpmc_read_reg(i32 %10)
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 5), align 8
  %12 = load i32, i32* @GPMC_CONFIG, align 4
  %13 = call i8* @gpmc_read_reg(i32 %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 4), align 8
  %14 = load i32, i32* @GPMC_PREFETCH_CONFIG1, align 4
  %15 = call i8* @gpmc_read_reg(i32 %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 3), align 8
  %16 = load i32, i32* @GPMC_PREFETCH_CONFIG2, align 4
  %17 = call i8* @gpmc_read_reg(i32 %16)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 2), align 8
  %18 = load i32, i32* @GPMC_PREFETCH_CONTROL, align 4
  %19 = call i8* @gpmc_read_reg(i32 %18)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %97, %5
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @gpmc_cs_num, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @gpmc_cs_mem_enabled(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 7
  store i64 %26, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %24
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @GPMC_CS_CONFIG1, align 4
  %42 = call i8* @gpmc_cs_read_reg(i32 %40, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @GPMC_CS_CONFIG2, align 4
  %50 = call i8* @gpmc_cs_read_reg(i32 %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i8* %50, i8** %55, align 8
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @GPMC_CS_CONFIG3, align 4
  %58 = call i8* @gpmc_cs_read_reg(i32 %56, i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i8* %58, i8** %63, align 8
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @GPMC_CS_CONFIG4, align 4
  %66 = call i8* @gpmc_cs_read_reg(i32 %64, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i8* %66, i8** %71, align 8
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @GPMC_CS_CONFIG5, align 4
  %74 = call i8* @gpmc_cs_read_reg(i32 %72, i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* @GPMC_CS_CONFIG6, align 4
  %82 = call i8* @gpmc_cs_read_reg(i32 %80, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i8* %82, i8** %87, align 8
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* @GPMC_CS_CONFIG7, align 4
  %90 = call i8* @gpmc_cs_read_reg(i32 %88, i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i8* %90, i8** %95, align 8
  br label %96

96:                                               ; preds = %39, %24
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %20

100:                                              ; preds = %4, %20
  ret void
}

declare dso_local i8* @gpmc_read_reg(i32) #1

declare dso_local i64 @gpmc_cs_mem_enabled(i32) #1

declare dso_local i8* @gpmc_cs_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
