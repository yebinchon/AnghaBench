; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_add_sta_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_add_sta_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_sta_node = type { i32, i32 }
%struct.mwifiex_private = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mwifiex_sta_node* @mwifiex_add_sta_entry(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_sta_node*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.mwifiex_sta_node* null, %struct.mwifiex_sta_node** %3, align 8
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %14, i32* %15)
  store %struct.mwifiex_sta_node* %16, %struct.mwifiex_sta_node** %6, align 8
  %17 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %18 = icmp ne %struct.mwifiex_sta_node* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %38

20:                                               ; preds = %10
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.mwifiex_sta_node* @kzalloc(i32 8, i32 %21)
  store %struct.mwifiex_sta_node* %22, %struct.mwifiex_sta_node** %6, align 8
  %23 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %24 = icmp ne %struct.mwifiex_sta_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %28 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %29, i32* %30, i32 %31)
  %33 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %34 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %33, i32 0, i32 0
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %26, %25, %19
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  store %struct.mwifiex_sta_node* %42, %struct.mwifiex_sta_node** %3, align 8
  br label %43

43:                                               ; preds = %38, %9
  %44 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %3, align 8
  ret %struct.mwifiex_sta_node* %44
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local %struct.mwifiex_sta_node* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
