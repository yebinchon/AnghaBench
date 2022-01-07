; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_wait_repr_reify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_wait_repr_reify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, %struct.TYPE_2__*, %struct.nfp_flower_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_flower_priv = type { i32 }

@NFP_FL_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Not all reprs responded to reify\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32*, i32)* @nfp_flower_wait_repr_reify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_wait_repr_reify(%struct.nfp_app* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 2
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  store %struct.nfp_flower_priv* %11, %struct.nfp_flower_priv** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @NFP_FL_REPLY_TIMEOUT, align 4
  %30 = call i32 @wait_event_timeout(i32 %23, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %15
  %33 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %34 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nfp_warn(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %32, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
