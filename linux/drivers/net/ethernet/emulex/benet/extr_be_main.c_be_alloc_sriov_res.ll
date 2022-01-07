; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_alloc_sriov_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_alloc_sriov_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_resources = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to optimize SRIOV resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_alloc_sriov_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_alloc_sriov_res(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_resources, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = call i32 @pci_num_vf(%struct.TYPE_3__* %8)
  store i32 %9, i32* %3, align 4
  %10 = bitcast %struct.be_resources* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = call i32 @be_get_sriov_config(%struct.be_adapter* %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %20 = call i64 @be_max_vfs(%struct.be_adapter* %19)
  %21 = call i32 @pci_sriov_set_totalvfs(%struct.TYPE_3__* %18, i64 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %24 = call i64 @skyhawk_chip(%struct.be_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %28 = call i64 @be_max_vfs(%struct.be_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %35 = call i32 @be_calculate_vf_res(%struct.be_adapter* %34, i32 0, %struct.be_resources* %4)
  %36 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %37 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @be_cmd_set_sriov_config(%struct.be_adapter* %36, i32 %39, i32 0, %struct.be_resources* %4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %30, %26, %22
  ret void
}

declare dso_local i32 @pci_num_vf(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @be_get_sriov_config(%struct.be_adapter*) #1

declare dso_local i32 @pci_sriov_set_totalvfs(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @be_max_vfs(%struct.be_adapter*) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_calculate_vf_res(%struct.be_adapter*, i32, %struct.be_resources*) #1

declare dso_local i32 @be_cmd_set_sriov_config(%struct.be_adapter*, i32, i32, %struct.be_resources*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
