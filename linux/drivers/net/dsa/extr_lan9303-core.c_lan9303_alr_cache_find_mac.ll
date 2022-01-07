; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_cache_find_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_cache_find_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303_alr_cache_entry = type { i32 }
%struct.lan9303 = type { %struct.lan9303_alr_cache_entry* }

@.str = private unnamed_addr constant [39 x i8] c"ether_addr_equal require u16 alignment\00", align 1
@LAN9303_NUM_ALR_RECORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lan9303_alr_cache_entry* (%struct.lan9303*, i32*)* @lan9303_alr_cache_find_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_mac(%struct.lan9303* %0, i32* %1) #0 {
  %3 = alloca %struct.lan9303_alr_cache_entry*, align 8
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan9303_alr_cache_entry*, align 8
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %9 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %8, i32 0, i32 0
  %10 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %9, align 8
  store %struct.lan9303_alr_cache_entry* %10, %struct.lan9303_alr_cache_entry** %7, align 8
  %11 = call i32 @BUILD_BUG_ON_MSG(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LAN9303_NUM_ALR_RECORDS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %7, align 8
  %18 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ether_addr_equal(i32 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %7, align 8
  store %struct.lan9303_alr_cache_entry* %24, %struct.lan9303_alr_cache_entry** %3, align 8
  br label %32

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %7, align 8
  %30 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %29, i32 1
  store %struct.lan9303_alr_cache_entry* %30, %struct.lan9303_alr_cache_entry** %7, align 8
  br label %12

31:                                               ; preds = %12
  store %struct.lan9303_alr_cache_entry* null, %struct.lan9303_alr_cache_entry** %3, align 8
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %3, align 8
  ret %struct.lan9303_alr_cache_entry* %33
}

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
