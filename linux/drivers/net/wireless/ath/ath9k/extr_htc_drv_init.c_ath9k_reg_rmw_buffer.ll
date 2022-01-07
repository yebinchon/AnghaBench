; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_reg_rmw_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_reg_rmw_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@MAX_RMW_CMD_NUMBER = common dso_local global i64 0, align 8
@WMI_REG_RMW_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"REGISTER RMW FAILED, multi len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @ath9k_reg_rmw_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_reg_rmw_buffer(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath9k_htc_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ath_hw*
  store %struct.ath_hw* %15, %struct.ath_hw** %9, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %10, align 8
  %18 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %21, %struct.ath9k_htc_priv** %11, align 8
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %28, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %42, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %58 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* %56, i8** %68, align 8
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %76 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MAX_RMW_CMD_NUMBER, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %4
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %84 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* @WMI_REG_RMW_CMDID, align 4
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %88 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = bitcast %struct.TYPE_3__** %90 to i32*
  %92 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %93 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @ath9k_wmi_cmd(%struct.TYPE_4__* %85, i32 %86, i32* %91, i32 %98, i32* %12, i32 4, i32 100)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %82
  %104 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %105 = load i32, i32* @WMI, align 4
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @ath_dbg(%struct.ath_common* %104, i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %103, %82
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %4
  %119 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %120 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ath9k_wmi_cmd(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
