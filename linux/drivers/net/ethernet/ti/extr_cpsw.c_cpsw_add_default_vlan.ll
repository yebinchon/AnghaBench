; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_default_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_default_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { %struct.TYPE_6__*, %struct.cpsw_common* }
%struct.TYPE_6__ = type { i32 }
%struct.cpsw_common = type { i64, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CPSW_VERSION_1 = common dso_local global i64 0, align 8
@CPSW1_PORT_VLAN = common dso_local global i32 0, align 4
@CPSW2_PORT_VLAN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ALE_ALL_PORTS = common dso_local global i32 0, align 4
@ALE_PORT_1 = common dso_local global i32 0, align 4
@ALE_PORT_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_priv*)* @cpsw_add_default_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_add_default_vlan(%struct.cpsw_priv* %0) #0 {
  %2 = alloca %struct.cpsw_priv*, align 8
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %2, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 1
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %3, align 8
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CPSW_VERSION_1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @CPSW1_PORT_VLAN, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @CPSW2_PORT_VLAN, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %28 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @writel(i32 %26, i32* %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %49, %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %35 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %41 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @slave_write(i64 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %54 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_ALLMULTI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @ALE_ALL_PORTS, align 4
  store i32 %62, i32* %7, align 4
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @ALE_PORT_1, align 4
  %65 = load i32, i32* @ALE_PORT_2, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %69 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ALE_ALL_PORTS, align 4
  %73 = load i32, i32* @ALE_ALL_PORTS, align 4
  %74 = load i32, i32* @ALE_ALL_PORTS, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @cpsw_ale_add_vlan(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @slave_write(i64, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_vlan(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
