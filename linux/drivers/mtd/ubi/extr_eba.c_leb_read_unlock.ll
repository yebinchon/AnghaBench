; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_leb_read_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_leb_read_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_ltree_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, i32, i32)* @leb_read_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leb_read_unlock(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_ltree_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ubi_ltree_entry* @ltree_lookup(%struct.ubi_device* %11, i32 %12, i32 %13)
  store %struct.ubi_ltree_entry* %14, %struct.ubi_ltree_entry** %7, align 8
  %15 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %16 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubi_assert(i32 %23)
  %25 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %26 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %25, i32 0, i32 2
  %27 = call i32 @up_read(i32* %26)
  %28 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %29 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %34 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %33, i32 0, i32 1
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 1
  %37 = call i32 @rb_erase(i32* %34, i32* %36)
  %38 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %7, align 8
  %39 = call i32 @kfree(%struct.ubi_ltree_entry* %38)
  br label %40

40:                                               ; preds = %32, %3
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ubi_ltree_entry* @ltree_lookup(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ubi_ltree_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
