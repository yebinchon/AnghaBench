; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_destroy_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_destroy_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32, i32, i32*, i32*, i32, %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ppp_unit_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ppp: destroying ppp struct %p but dead=%d n_channels=%d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*)* @ppp_destroy_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_destroy_interface(%struct.ppp* %0) #0 {
  %2 = alloca %struct.ppp*, align 8
  store %struct.ppp* %0, %struct.ppp** %2, align 8
  %3 = call i32 @atomic_dec(i32* @ppp_unit_count)
  %4 = load %struct.ppp*, %struct.ppp** %2, align 8
  %5 = getelementptr inbounds %struct.ppp, %struct.ppp* %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ppp*, %struct.ppp** %2, align 8
  %11 = getelementptr inbounds %struct.ppp, %struct.ppp* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9, %1
  %15 = load %struct.ppp*, %struct.ppp** %2, align 8
  %16 = getelementptr inbounds %struct.ppp, %struct.ppp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ppp*, %struct.ppp** %2, align 8
  %19 = load %struct.ppp*, %struct.ppp** %2, align 8
  %20 = getelementptr inbounds %struct.ppp, %struct.ppp* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ppp*, %struct.ppp** %2, align 8
  %24 = getelementptr inbounds %struct.ppp, %struct.ppp* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.ppp* %18, i32 %22, i64 %25)
  br label %62

27:                                               ; preds = %9
  %28 = load %struct.ppp*, %struct.ppp** %2, align 8
  %29 = call i32 @ppp_ccp_closed(%struct.ppp* %28)
  %30 = load %struct.ppp*, %struct.ppp** %2, align 8
  %31 = getelementptr inbounds %struct.ppp, %struct.ppp* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.ppp*, %struct.ppp** %2, align 8
  %36 = getelementptr inbounds %struct.ppp, %struct.ppp* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @slhc_free(i32* %37)
  %39 = load %struct.ppp*, %struct.ppp** %2, align 8
  %40 = getelementptr inbounds %struct.ppp, %struct.ppp* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.ppp*, %struct.ppp** %2, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @skb_queue_purge(i32* %44)
  %46 = load %struct.ppp*, %struct.ppp** %2, align 8
  %47 = getelementptr inbounds %struct.ppp, %struct.ppp* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @skb_queue_purge(i32* %48)
  %50 = load %struct.ppp*, %struct.ppp** %2, align 8
  %51 = getelementptr inbounds %struct.ppp, %struct.ppp* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree_skb(i32 %52)
  %54 = load %struct.ppp*, %struct.ppp** %2, align 8
  %55 = getelementptr inbounds %struct.ppp, %struct.ppp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @free_percpu(i32 %56)
  %58 = load %struct.ppp*, %struct.ppp** %2, align 8
  %59 = getelementptr inbounds %struct.ppp, %struct.ppp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @free_netdev(i32 %60)
  br label %62

62:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, %struct.ppp*, i32, i64) #1

declare dso_local i32 @ppp_ccp_closed(%struct.ppp*) #1

declare dso_local i32 @slhc_free(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
