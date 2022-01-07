; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_omap3_gpmc_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_omap3_gpmc_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

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
define dso_local void @omap3_gpmc_restore_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @gpmc_base, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %107

5:                                                ; preds = %0
  %6 = load i32, i32* @GPMC_SYSCONFIG, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 7), align 8
  %8 = call i32 @gpmc_write_reg(i32 %6, i32 %7)
  %9 = load i32, i32* @GPMC_IRQENABLE, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 6), align 4
  %11 = call i32 @gpmc_write_reg(i32 %9, i32 %10)
  %12 = load i32, i32* @GPMC_TIMEOUT_CONTROL, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 5), align 8
  %14 = call i32 @gpmc_write_reg(i32 %12, i32 %13)
  %15 = load i32, i32* @GPMC_CONFIG, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 4), align 4
  %17 = call i32 @gpmc_write_reg(i32 %15, i32 %16)
  %18 = load i32, i32* @GPMC_PREFETCH_CONFIG1, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 3), align 8
  %20 = call i32 @gpmc_write_reg(i32 %18, i32 %19)
  %21 = load i32, i32* @GPMC_PREFETCH_CONFIG2, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 2), align 4
  %23 = call i32 @gpmc_write_reg(i32 %21, i32 %22)
  %24 = load i32, i32* @GPMC_PREFETCH_CONTROL, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 1), align 8
  %26 = call i32 @gpmc_write_reg(i32 %24, i32 %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %104, %5
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @gpmc_cs_num, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %31
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @GPMC_CS_CONFIG1, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @gpmc_cs_write_reg(i32 %40, i32 %41, i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @GPMC_CS_CONFIG2, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gpmc_cs_write_reg(i32 %49, i32 %50, i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @GPMC_CS_CONFIG3, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gpmc_cs_write_reg(i32 %58, i32 %59, i32 %65)
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @GPMC_CS_CONFIG4, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpmc_cs_write_reg(i32 %67, i32 %68, i32 %74)
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @GPMC_CS_CONFIG5, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @gpmc_cs_write_reg(i32 %76, i32 %77, i32 %83)
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @GPMC_CS_CONFIG6, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @gpmc_cs_write_reg(i32 %85, i32 %86, i32 %92)
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @GPMC_CS_CONFIG7, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gpmc_context, i32 0, i32 0), align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @gpmc_cs_write_reg(i32 %94, i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %39, %31
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %1, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %1, align 4
  br label %27

107:                                              ; preds = %4, %27
  ret void
}

declare dso_local i32 @gpmc_write_reg(i32, i32) #1

declare dso_local i32 @gpmc_cs_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
