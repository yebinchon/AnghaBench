; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_mac.h_free_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_mac.h_free_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_hash_t = type { i32, %struct.eth_hash_t* }
%struct.eth_hash_entry = type { i32, %struct.eth_hash_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eth_hash_t*)* @free_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hash_table(%struct.eth_hash_t* %0) #0 {
  %2 = alloca %struct.eth_hash_t*, align 8
  %3 = alloca %struct.eth_hash_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.eth_hash_t* %0, %struct.eth_hash_t** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %6 = icmp ne %struct.eth_hash_t* %5, null
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %9 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %8, i32 0, i32 1
  %10 = load %struct.eth_hash_t*, %struct.eth_hash_t** %9, align 8
  %11 = icmp ne %struct.eth_hash_t* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %16 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %21 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %20, i32 0, i32 1
  %22 = load %struct.eth_hash_t*, %struct.eth_hash_t** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %22, i64 %24
  %26 = call %struct.eth_hash_t* @dequeue_addr_from_hash_entry(%struct.eth_hash_t* %25)
  %27 = bitcast %struct.eth_hash_t* %26 to %struct.eth_hash_entry*
  store %struct.eth_hash_entry* %27, %struct.eth_hash_entry** %3, align 8
  br label %28

28:                                               ; preds = %31, %19
  %29 = load %struct.eth_hash_entry*, %struct.eth_hash_entry** %3, align 8
  %30 = icmp ne %struct.eth_hash_entry* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.eth_hash_entry*, %struct.eth_hash_entry** %3, align 8
  %33 = bitcast %struct.eth_hash_entry* %32 to %struct.eth_hash_t*
  %34 = call i32 @kfree(%struct.eth_hash_t* %33)
  %35 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %36 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %35, i32 0, i32 1
  %37 = load %struct.eth_hash_t*, %struct.eth_hash_t** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %37, i64 %39
  %41 = call %struct.eth_hash_t* @dequeue_addr_from_hash_entry(%struct.eth_hash_t* %40)
  %42 = bitcast %struct.eth_hash_t* %41 to %struct.eth_hash_entry*
  store %struct.eth_hash_entry* %42, %struct.eth_hash_entry** %3, align 8
  br label %28

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %49 = getelementptr inbounds %struct.eth_hash_t, %struct.eth_hash_t* %48, i32 0, i32 1
  %50 = load %struct.eth_hash_t*, %struct.eth_hash_t** %49, align 8
  %51 = call i32 @kfree(%struct.eth_hash_t* %50)
  br label %52

52:                                               ; preds = %47, %7
  %53 = load %struct.eth_hash_t*, %struct.eth_hash_t** %2, align 8
  %54 = call i32 @kfree(%struct.eth_hash_t* %53)
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

declare dso_local %struct.eth_hash_t* @dequeue_addr_from_hash_entry(%struct.eth_hash_t*) #1

declare dso_local i32 @kfree(%struct.eth_hash_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
