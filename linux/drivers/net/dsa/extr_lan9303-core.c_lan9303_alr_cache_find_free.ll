; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_cache_find_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_cache_find_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303_alr_cache_entry = type { i64 }
%struct.lan9303 = type { %struct.lan9303_alr_cache_entry* }

@LAN9303_NUM_ALR_RECORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lan9303_alr_cache_entry* (%struct.lan9303*)* @lan9303_alr_cache_find_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_free(%struct.lan9303* %0) #0 {
  %2 = alloca %struct.lan9303_alr_cache_entry*, align 8
  %3 = alloca %struct.lan9303*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan9303_alr_cache_entry*, align 8
  store %struct.lan9303* %0, %struct.lan9303** %3, align 8
  %6 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %7 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %6, i32 0, i32 0
  %8 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %7, align 8
  store %struct.lan9303_alr_cache_entry* %8, %struct.lan9303_alr_cache_entry** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LAN9303_NUM_ALR_RECORDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %5, align 8
  %15 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %5, align 8
  store %struct.lan9303_alr_cache_entry* %19, %struct.lan9303_alr_cache_entry** %2, align 8
  br label %27

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %5, align 8
  %25 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %24, i32 1
  store %struct.lan9303_alr_cache_entry* %25, %struct.lan9303_alr_cache_entry** %5, align 8
  br label %9

26:                                               ; preds = %9
  store %struct.lan9303_alr_cache_entry* null, %struct.lan9303_alr_cache_entry** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %2, align 8
  ret %struct.lan9303_alr_cache_entry* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
