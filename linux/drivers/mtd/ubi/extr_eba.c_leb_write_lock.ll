; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_leb_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_leb_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ltree_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, i32)* @leb_write_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leb_write_lock(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ltree_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.ubi_ltree_entry* @ltree_add_entry(%struct.ubi_device* %9, i32 %10, i32 %11)
  store %struct.ubi_ltree_entry* %12, %struct.ubi_ltree_entry** %8, align 8
  %13 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ubi_ltree_entry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.ubi_ltree_entry* %17)
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %21 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.ubi_ltree_entry* @ltree_add_entry(%struct.ubi_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_ltree_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_ltree_entry*) #1

declare dso_local i32 @down_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
