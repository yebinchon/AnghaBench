; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSU_TEN = common dso_local global i32 0, align 4
@TSU_FWSLC_POSTENU = common dso_local global i32 0, align 4
@TSU_FWSLC_POSTENL = common dso_local global i32 0, align 4
@TSU_FWSLC = common dso_local global i32 0, align 4
@TSU_FWEN0 = common dso_local global i32 0, align 4
@TSU_FWEN1 = common dso_local global i32 0, align 4
@TSU_FCM = common dso_local global i32 0, align 4
@TSU_BSYSL0 = common dso_local global i32 0, align 4
@TSU_BSYSL1 = common dso_local global i32 0, align 4
@TSU_PRISL0 = common dso_local global i32 0, align 4
@TSU_PRISL1 = common dso_local global i32 0, align 4
@TSU_FWSL0 = common dso_local global i32 0, align 4
@TSU_FWSL1 = common dso_local global i32 0, align 4
@TSU_QTAGM0 = common dso_local global i32 0, align 4
@TSU_QTAGM1 = common dso_local global i32 0, align 4
@TSU_FWSR = common dso_local global i32 0, align 4
@TSU_FWINMK = common dso_local global i32 0, align 4
@TSU_POST1 = common dso_local global i32 0, align 4
@TSU_POST2 = common dso_local global i32 0, align 4
@TSU_POST3 = common dso_local global i32 0, align 4
@TSU_POST4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_eth_private*)* @sh_eth_tsu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_tsu_init(%struct.sh_eth_private* %0) #0 {
  %2 = alloca %struct.sh_eth_private*, align 8
  store %struct.sh_eth_private* %0, %struct.sh_eth_private** %2, align 8
  %3 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %4 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %11 = load i32, i32* @TSU_TEN, align 4
  %12 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %10, i32 0, i32 %11)
  %13 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %14 = load i32, i32* @TSU_FWSLC_POSTENU, align 4
  %15 = load i32, i32* @TSU_FWSLC_POSTENL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @TSU_FWSLC, align 4
  %18 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %13, i32 %16, i32 %17)
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %21 = load i32, i32* @TSU_FWEN0, align 4
  %22 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %20, i32 0, i32 %21)
  %23 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %24 = load i32, i32* @TSU_FWEN1, align 4
  %25 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %23, i32 0, i32 %24)
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %27 = load i32, i32* @TSU_FCM, align 4
  %28 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %26, i32 0, i32 %27)
  %29 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %30 = load i32, i32* @TSU_BSYSL0, align 4
  %31 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %29, i32 12, i32 %30)
  %32 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %33 = load i32, i32* @TSU_BSYSL1, align 4
  %34 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %32, i32 12, i32 %33)
  %35 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %36 = load i32, i32* @TSU_PRISL0, align 4
  %37 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %35, i32 0, i32 %36)
  %38 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %39 = load i32, i32* @TSU_PRISL1, align 4
  %40 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %38, i32 0, i32 %39)
  %41 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %42 = load i32, i32* @TSU_FWSL0, align 4
  %43 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %41, i32 0, i32 %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %45 = load i32, i32* @TSU_FWSL1, align 4
  %46 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %44, i32 0, i32 %45)
  %47 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %48 = load i32, i32* @TSU_FWSLC_POSTENU, align 4
  %49 = load i32, i32* @TSU_FWSLC_POSTENL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TSU_FWSLC, align 4
  %52 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %47, i32 %50, i32 %51)
  %53 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %54 = load i32, i32* @TSU_QTAGM0, align 4
  %55 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %53, i32 0, i32 %54)
  %56 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %57 = load i32, i32* @TSU_QTAGM1, align 4
  %58 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %56, i32 0, i32 %57)
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %60 = load i32, i32* @TSU_FWSR, align 4
  %61 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %59, i32 0, i32 %60)
  %62 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %63 = load i32, i32* @TSU_FWINMK, align 4
  %64 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %62, i32 0, i32 %63)
  %65 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %66 = load i32, i32* @TSU_TEN, align 4
  %67 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %65, i32 0, i32 %66)
  %68 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %69 = load i32, i32* @TSU_POST1, align 4
  %70 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %68, i32 0, i32 %69)
  %71 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %72 = load i32, i32* @TSU_POST2, align 4
  %73 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %71, i32 0, i32 %72)
  %74 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %75 = load i32, i32* @TSU_POST3, align 4
  %76 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %74, i32 0, i32 %75)
  %77 = load %struct.sh_eth_private*, %struct.sh_eth_private** %2, align 8
  %78 = load i32, i32* @TSU_POST4, align 4
  %79 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @sh_eth_tsu_write(%struct.sh_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
