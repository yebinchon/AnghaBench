; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_qdisc = type { i32, i32, %struct.nfp_qdisc*, i8*, i8*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_port = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Qdisc insertion into radix tree failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_qdisc* (%struct.net_device*, %struct.nfp_abm_link*, i32, i8*, i8*, i32)* @nfp_abm_qdisc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_qdisc* @nfp_abm_qdisc_alloc(%struct.net_device* %0, %struct.nfp_abm_link* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.nfp_qdisc*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nfp_abm_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfp_port*, align 8
  %15 = alloca %struct.nfp_qdisc*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %17)
  store %struct.nfp_port* %18, %struct.nfp_port** %14, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nfp_qdisc* @kzalloc(i32 40, i32 %19)
  store %struct.nfp_qdisc* %20, %struct.nfp_qdisc** %15, align 8
  %21 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %22 = icmp ne %struct.nfp_qdisc* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store %struct.nfp_qdisc* null, %struct.nfp_qdisc** %7, align 8
  br label %89

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nfp_qdisc* @kcalloc(i32 %28, i32 8, i32 %29)
  %31 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %32 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %31, i32 0, i32 2
  store %struct.nfp_qdisc* %30, %struct.nfp_qdisc** %32, align 8
  %33 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %34 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %33, i32 0, i32 2
  %35 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %34, align 8
  %36 = icmp ne %struct.nfp_qdisc* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %86

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %42 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %41, i32 0, i32 5
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %45 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %48 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %51 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %54 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %9, align 8
  %56 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %55, i32 0, i32 1
  %57 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %58 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @TC_H_MAJ(i8* %59)
  %61 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %62 = call i32 @radix_tree_insert(i32* %56, i32 %60, %struct.nfp_qdisc* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %39
  %66 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %9, align 8
  %67 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @nfp_err(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %81

75:                                               ; preds = %39
  %76 = load %struct.nfp_port*, %struct.nfp_port** %14, align 8
  %77 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  store %struct.nfp_qdisc* %80, %struct.nfp_qdisc** %7, align 8
  br label %89

81:                                               ; preds = %65
  %82 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %83 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %82, i32 0, i32 2
  %84 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %83, align 8
  %85 = call i32 @kfree(%struct.nfp_qdisc* %84)
  br label %86

86:                                               ; preds = %81, %37
  %87 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %15, align 8
  %88 = call i32 @kfree(%struct.nfp_qdisc* %87)
  store %struct.nfp_qdisc* null, %struct.nfp_qdisc** %7, align 8
  br label %89

89:                                               ; preds = %86, %75, %23
  %90 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  ret %struct.nfp_qdisc* %90
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_qdisc* @kzalloc(i32, i32) #1

declare dso_local %struct.nfp_qdisc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.nfp_qdisc*) #1

declare dso_local i32 @TC_H_MAJ(i8*) #1

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
