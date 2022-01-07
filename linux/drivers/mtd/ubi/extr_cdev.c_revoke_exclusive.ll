; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_revoke_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_revoke_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UBI_EXCLUSIVE = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i32 0, align 4
@UBI_READWRITE = common dso_local global i32 0, align 4
@UBI_METAONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_volume_desc*, i32)* @revoke_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revoke_exclusive(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 1
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  store %struct.ubi_volume* %8, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %23, %18, %2
  %29 = phi i1 [ false, %18 ], [ false, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubi_assert(i32 %30)
  %32 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %33 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %38 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @UBI_EXCLUSIVE, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %36, %28
  %43 = phi i1 [ false, %28 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubi_assert(i32 %44)
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @UBI_READONLY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %53 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %73

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @UBI_READWRITE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %72

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @UBI_METAONLY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %67 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %75 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %81 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
