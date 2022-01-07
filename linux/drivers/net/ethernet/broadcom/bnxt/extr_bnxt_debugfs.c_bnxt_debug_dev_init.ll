; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_debugfs.c_bnxt_debug_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_debugfs.c_bnxt_debug_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__**, i8*, i32 }
%struct.TYPE_2__ = type { i64, %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32 }
%struct.dentry = type { i32 }

@bnxt_debug_mnt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"dim\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_debug_dev_init(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @pci_name(i32 %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** @bnxt_debug_mnt, align 8
  %13 = call i8* @debugfs_create_dir(i8* %11, i8* %12)
  %14 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = bitcast i8* %19 to %struct.dentry*
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %56, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %35, %struct.bnxt_cp_ring_info** %6, align 8
  %36 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %37 = icmp ne %struct.bnxt_cp_ring_info* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %27
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %51 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = call i32 @debugfs_dim_ring_init(i32* %51, i32 %52, %struct.dentry* %53)
  br label %55

55:                                               ; preds = %49, %38, %27
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %21

59:                                               ; preds = %21
  ret void
}

declare dso_local i8* @pci_name(i32) #1

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @debugfs_dim_ring_init(i32*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
