; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32*, %struct.TYPE_2__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ice_service_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ice_service_task = common dso_local global i32 0, align 4
@__ICE_SERVICE_SCHED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_pf(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %4 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %5 = call i32 @ice_set_pf_caps(%struct.ice_pf* %4)
  %6 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %7 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %6, i32 0, i32 10
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 9
  %11 = load i32, i32* @ice_service_timer, align 4
  %12 = call i32 @timer_setup(i32* %10, i32 %11, i32 0)
  %13 = load i32, i32* @HZ, align 4
  %14 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 7
  %18 = load i32, i32* @ice_service_task, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i32, i32* @__ICE_SERVICE_SCHED, align 4
  %21 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %20, i32 %23)
  %25 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 5
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @bitmap_zalloc(i32 %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %1
  %44 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @bitmap_zalloc(i32 %46, i32 %47)
  %49 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %50 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %52 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %43
  %56 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @devm_kfree(i32* %59, i32* %62)
  %64 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %55, %40
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ice_set_pf_caps(%struct.ice_pf*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i8* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
