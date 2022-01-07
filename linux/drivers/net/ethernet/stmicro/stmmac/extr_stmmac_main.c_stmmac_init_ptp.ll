; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_ptp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i64, i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"IEEE 1588-2002 Timestamp supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"IEEE 1588-2008 Advanced Timestamp supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_init_ptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_init_ptp(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %5 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %5, i32 0, i32 6
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i1 [ true, %1 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %28 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %92

35:                                               ; preds = %26, %18
  %36 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %37 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %64

49:                                               ; preds = %40, %35
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %56 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %54, %49
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %66 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %72 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netdev_info(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %64
  %76 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %77 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %82 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @netdev_info(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %87 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %89 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %91 = call i32 @stmmac_ptp_register(%struct.stmmac_priv* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %32
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @stmmac_ptp_register(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
