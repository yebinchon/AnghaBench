; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_reprs_get_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_reprs_get_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_reprs = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @lockdep_is_held(i32* %15)
  %17 = call %struct.nfp_reprs* @rcu_dereference_protected(i32 %11, i32 %16)
  ret %struct.nfp_reprs* %17
}

declare dso_local %struct.nfp_reprs* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
