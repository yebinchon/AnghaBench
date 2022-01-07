; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_allocate_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_allocate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*, %struct.TYPE_4__, i32, %struct.TYPE_3__, i64, i8* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.nfp_fl_key_ls = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_fl_payload* (%struct.nfp_fl_key_ls*)* @nfp_flower_allocate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_fl_payload* @nfp_flower_allocate_new(%struct.nfp_fl_key_ls* %0) #0 {
  %2 = alloca %struct.nfp_fl_payload*, align 8
  %3 = alloca %struct.nfp_fl_key_ls*, align 8
  %4 = alloca %struct.nfp_fl_payload*, align 8
  store %struct.nfp_fl_key_ls* %0, %struct.nfp_fl_key_ls** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kmalloc(i32 72, i32 %5)
  %7 = bitcast i8* %6 to %struct.nfp_fl_payload*
  store %struct.nfp_fl_payload* %7, %struct.nfp_fl_payload** %4, align 8
  %8 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %9 = icmp ne %struct.nfp_fl_payload* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.nfp_fl_payload* null, %struct.nfp_fl_payload** %2, align 8
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %3, align 8
  %19 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.nfp_fl_payload*
  %24 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %24, i32 0, i32 1
  store %struct.nfp_fl_payload* %23, %struct.nfp_fl_payload** %25, align 8
  %26 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %26, i32 0, i32 1
  %28 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %27, align 8
  %29 = icmp ne %struct.nfp_fl_payload* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %11
  br label %87

31:                                               ; preds = %11
  %32 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.nfp_fl_key_ls*, %struct.nfp_fl_key_ls** %3, align 8
  %39 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.nfp_fl_payload*
  %44 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %45 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %44, i32 0, i32 2
  store %struct.nfp_fl_payload* %43, %struct.nfp_fl_payload** %45, align 8
  %46 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %46, i32 0, i32 2
  %48 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %47, align 8
  %49 = icmp ne %struct.nfp_fl_payload* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %82

51:                                               ; preds = %31
  %52 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  %55 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %56 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %58 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %57, i32 0, i32 7
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %77

62:                                               ; preds = %51
  %63 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %64 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %66 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %69 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %68, i32 0, i32 4
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %72 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %74 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  store %struct.nfp_fl_payload* %76, %struct.nfp_fl_payload** %2, align 8
  br label %90

77:                                               ; preds = %61
  %78 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %79 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %78, i32 0, i32 2
  %80 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %79, align 8
  %81 = call i32 @kfree(%struct.nfp_fl_payload* %80)
  br label %82

82:                                               ; preds = %77, %50
  %83 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %84 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %83, i32 0, i32 1
  %85 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %84, align 8
  %86 = call i32 @kfree(%struct.nfp_fl_payload* %85)
  br label %87

87:                                               ; preds = %82, %30
  %88 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %89 = call i32 @kfree(%struct.nfp_fl_payload* %88)
  store %struct.nfp_fl_payload* null, %struct.nfp_fl_payload** %2, align 8
  br label %90

90:                                               ; preds = %87, %62, %10
  %91 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %2, align 8
  ret %struct.nfp_fl_payload* %91
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_fl_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
