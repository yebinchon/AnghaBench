; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c___nfp_flower_non_repr_priv_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c___nfp_flower_non_repr_priv_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_non_repr_priv = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nfp_flower_non_repr_priv_put(%struct.nfp_flower_non_repr_priv* %0) #0 {
  %2 = alloca %struct.nfp_flower_non_repr_priv*, align 8
  store %struct.nfp_flower_non_repr_priv* %0, %struct.nfp_flower_non_repr_priv** %2, align 8
  %3 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %2, align 8
  %14 = call i32 @kfree(%struct.nfp_flower_non_repr_priv* %13)
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_flower_non_repr_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
