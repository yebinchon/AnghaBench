; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }
%struct.lan9303_alr_cache_entry = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, i32*, i32, i32)* @lan9303_alr_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_alr_add_port(%struct.lan9303* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan9303*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lan9303_alr_cache_entry*, align 8
  store %struct.lan9303* %0, %struct.lan9303** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %12 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_mac(%struct.lan9303* %14, i32* %15)
  store %struct.lan9303_alr_cache_entry* %16, %struct.lan9303_alr_cache_entry** %10, align 8
  %17 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %18 = icmp ne %struct.lan9303_alr_cache_entry* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4
  %20 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %21 = call %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_free(%struct.lan9303* %20)
  store %struct.lan9303_alr_cache_entry* %21, %struct.lan9303_alr_cache_entry** %10, align 8
  %22 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %23 = icmp ne %struct.lan9303_alr_cache_entry* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %26 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %32 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ether_addr_copy(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %30, %4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %40 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %45 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.lan9303_alr_cache_entry*, %struct.lan9303_alr_cache_entry** %10, align 8
  %49 = getelementptr inbounds %struct.lan9303_alr_cache_entry, %struct.lan9303_alr_cache_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @lan9303_alr_set_entry(%struct.lan9303* %46, i32* %47, i32 %50, i32 %51)
  %53 = load %struct.lan9303*, %struct.lan9303** %6, align 8
  %54 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %36, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_mac(%struct.lan9303*, i32*) #1

declare dso_local %struct.lan9303_alr_cache_entry* @lan9303_alr_cache_find_free(%struct.lan9303*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lan9303_alr_set_entry(%struct.lan9303*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
