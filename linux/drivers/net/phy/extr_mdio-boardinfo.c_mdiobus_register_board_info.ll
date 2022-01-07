; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-boardinfo.c_mdiobus_register_board_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-boardinfo.c_mdiobus_register_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_board_info = type { i32 }
%struct.mdio_board_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdio_board_lock = common dso_local global i32 0, align 4
@mdio_board_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdiobus_register_board_info(%struct.mdio_board_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdio_board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdio_board_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mdio_board_info* %0, %struct.mdio_board_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mdio_board_entry* @kcalloc(i32 %8, i32 8, i32 %9)
  store %struct.mdio_board_entry* %10, %struct.mdio_board_entry** %6, align 8
  %11 = load %struct.mdio_board_entry*, %struct.mdio_board_entry** %6, align 8
  %12 = icmp ne %struct.mdio_board_entry* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.mdio_board_entry*, %struct.mdio_board_entry** %6, align 8
  %23 = getelementptr inbounds %struct.mdio_board_entry, %struct.mdio_board_entry* %22, i32 0, i32 1
  %24 = load %struct.mdio_board_info*, %struct.mdio_board_info** %4, align 8
  %25 = call i32 @memcpy(i32* %23, %struct.mdio_board_info* %24, i32 4)
  %26 = call i32 @mutex_lock(i32* @mdio_board_lock)
  %27 = load %struct.mdio_board_entry*, %struct.mdio_board_entry** %6, align 8
  %28 = getelementptr inbounds %struct.mdio_board_entry, %struct.mdio_board_entry* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %28, i32* @mdio_board_list)
  %30 = call i32 @mutex_unlock(i32* @mdio_board_lock)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mdio_board_entry*, %struct.mdio_board_entry** %6, align 8
  %35 = getelementptr inbounds %struct.mdio_board_entry, %struct.mdio_board_entry* %34, i32 1
  store %struct.mdio_board_entry* %35, %struct.mdio_board_entry** %6, align 8
  %36 = load %struct.mdio_board_info*, %struct.mdio_board_info** %4, align 8
  %37 = getelementptr inbounds %struct.mdio_board_info, %struct.mdio_board_info* %36, i32 1
  store %struct.mdio_board_info* %37, %struct.mdio_board_info** %4, align 8
  br label %17

38:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mdio_board_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mdio_board_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
