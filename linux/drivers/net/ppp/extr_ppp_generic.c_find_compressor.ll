; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_find_compressor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_find_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.compressor_entry = type { %struct.compressor* }

@compressor_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.compressor* (i32)* @find_compressor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.compressor* @find_compressor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.compressor_entry*, align 8
  %4 = alloca %struct.compressor*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.compressor* null, %struct.compressor** %4, align 8
  %5 = call i32 @spin_lock(i32* @compressor_list_lock)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.compressor_entry* @find_comp_entry(i32 %6)
  store %struct.compressor_entry* %7, %struct.compressor_entry** %3, align 8
  %8 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %9 = icmp ne %struct.compressor_entry* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %12 = getelementptr inbounds %struct.compressor_entry, %struct.compressor_entry* %11, i32 0, i32 0
  %13 = load %struct.compressor*, %struct.compressor** %12, align 8
  store %struct.compressor* %13, %struct.compressor** %4, align 8
  %14 = load %struct.compressor*, %struct.compressor** %4, align 8
  %15 = getelementptr inbounds %struct.compressor, %struct.compressor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @try_module_get(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store %struct.compressor* null, %struct.compressor** %4, align 8
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %1
  %22 = call i32 @spin_unlock(i32* @compressor_list_lock)
  %23 = load %struct.compressor*, %struct.compressor** %4, align 8
  ret %struct.compressor* %23
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.compressor_entry* @find_comp_entry(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
