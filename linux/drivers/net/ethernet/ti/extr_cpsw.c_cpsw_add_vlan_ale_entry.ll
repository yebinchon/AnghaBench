; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_vlan_ale_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_vlan_ale_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, i32, %struct.TYPE_4__*, %struct.cpsw_common* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cpsw_common = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ALE_PORT_HOST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ALE_ALL_PORTS = common dso_local global i8* null, align 8
@ALE_PORT_1 = common dso_local global i32 0, align 4
@ALE_PORT_2 = common dso_local global i32 0, align 4
@HOST_PORT_NUM = common dso_local global i32 0, align 4
@ALE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, i16)* @cpsw_add_vlan_ale_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_add_vlan_ale_entry(%struct.cpsw_priv* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpsw_common*, align 8
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %7, align 4
  %11 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %11, i32 0, i32 3
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %12, align 8
  store %struct.cpsw_common* %13, %struct.cpsw_common** %10, align 8
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %15 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %21 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = shl i32 1, %23
  %25 = load i32, i32* @ALE_PORT_HOST, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @ALE_PORT_HOST, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %29 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_ALLMULTI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %19
  br label %59

39:                                               ; preds = %2
  %40 = load i8*, i8** @ALE_ALL_PORTS, align 8
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %44 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_ALLMULTI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i8*, i8** @ALE_ALL_PORTS, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @ALE_PORT_1, align 4
  %56 = load i32, i32* @ALE_PORT_2, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %61 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i16, i16* %5, align 2
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @cpsw_ale_add_vlan(i32 %62, i16 zeroext %63, i32 %64, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %121

72:                                               ; preds = %59
  %73 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %74 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %77 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HOST_PORT_NUM, align 4
  %80 = load i32, i32* @ALE_VLAN, align 4
  %81 = load i16, i16* %5, align 2
  %82 = call i32 @cpsw_ale_add_ucast(i32 %75, i32 %78, i32 %79, i32 %80, i16 zeroext %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %114

86:                                               ; preds = %72
  %87 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %88 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %91 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ALE_VLAN, align 4
  %97 = load i16, i16* %5, align 2
  %98 = call i32 @cpsw_ale_add_mcast(i32 %89, i32 %94, i32 %95, i32 %96, i16 zeroext %97, i32 0)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %103

102:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %121

103:                                              ; preds = %101
  %104 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %105 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %108 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @HOST_PORT_NUM, align 4
  %111 = load i32, i32* @ALE_VLAN, align 4
  %112 = load i16, i16* %5, align 2
  %113 = call i32 @cpsw_ale_del_ucast(i32 %106, i32 %109, i32 %110, i32 %111, i16 zeroext %112)
  br label %114

114:                                              ; preds = %103, %85
  %115 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %116 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i16, i16* %5, align 2
  %119 = call i32 @cpsw_ale_del_vlan(i32 %117, i16 zeroext %118, i32 0)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %114, %102, %70
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @cpsw_ale_add_vlan(i32, i16 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_ucast(i32, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32, i32, i32, i16 zeroext, i32) #1

declare dso_local i32 @cpsw_ale_del_ucast(i32, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @cpsw_ale_del_vlan(i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
