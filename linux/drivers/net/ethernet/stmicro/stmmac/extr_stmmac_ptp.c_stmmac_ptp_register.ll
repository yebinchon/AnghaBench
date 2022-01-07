; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ptp.c_stmmac_ptp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ptp.c_stmmac_ptp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.stmmac_priv = type { i32, i32*, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@STMMAC_PPS_MAX = common dso_local global i32 0, align 4
@stmmac_ptp_clock_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"registered PTP clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmmac_ptp_register(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @STMMAC_PPS_MAX, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %27

16:                                               ; preds = %11
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 7
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %15, %4
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 6
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %36 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %35, i32 0, i32 6
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stmmac_ptp_clock_ops, i32 0, i32 1), align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stmmac_ptp_clock_ops, i32 0, i32 0), align 8
  %45 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %46 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %45, i32 0, i32 4
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 3
  %50 = bitcast %struct.TYPE_9__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.TYPE_9__* @stmmac_ptp_clock_ops to i8*), i64 16, i1 false)
  %51 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %52 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %51, i32 0, i32 3
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @ptp_clock_register(%struct.TYPE_9__* %52, i32 %55)
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %60 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %40
  %65 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %66 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netdev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %70 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  br label %82

71:                                               ; preds = %40
  %72 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %73 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %78 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_info(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %64
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ptp_clock_register(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
