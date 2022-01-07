; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_self_check_in_wl_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_self_check_in_wl_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_wl_entry = type { i32, i32 }
%struct.rb_root = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"self-check failed for PEB %d, EC %d, RB-tree %p \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*, %struct.rb_root*)* @self_check_in_wl_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_in_wl_tree(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, %struct.rb_root* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca %struct.rb_root*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %6, align 8
  store %struct.rb_root* %2, %struct.rb_root** %7, align 8
  %8 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %9 = call i32 @ubi_dbg_chk_gen(%struct.ubi_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

12:                                               ; preds = %3
  %13 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %14 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %15 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %13, %struct.rb_root* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %20 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %21 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %24 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %27 = call i32 @ubi_err(%struct.ubi_device* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, %struct.rb_root* %26)
  %28 = call i32 (...) @dump_stack()
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %17, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @ubi_dbg_chk_gen(%struct.ubi_device*) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, %struct.rb_root*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32, %struct.rb_root*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
