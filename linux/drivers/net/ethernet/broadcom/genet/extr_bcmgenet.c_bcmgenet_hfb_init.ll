; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_hfb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_hfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_hfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_hfb_init(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %3 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %4 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %8 = call i64 @GENET_IS_V2(%struct.bcmgenet_priv* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %14

11:                                               ; preds = %6
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %13 = call i32 @bcmgenet_hfb_clear(%struct.bcmgenet_priv* %12)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i64 @GENET_IS_V2(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_hfb_clear(%struct.bcmgenet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
