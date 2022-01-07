; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_free_phys_pg_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_free_phys_pg_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.hl_vm }
%struct.hl_vm = type { i32, i32 }
%struct.hl_vm_phys_pg_pack = type { i64, i32*, i32, i32, i64, i32 }

@dram_pg_pool_do_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, %struct.hl_vm_phys_pg_pack*)* @free_phys_pg_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_phys_pg_pack(%struct.hl_device* %0, %struct.hl_vm_phys_pg_pack* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  %5 = alloca %struct.hl_vm*, align 8
  %6 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_vm_phys_pg_pack* %1, %struct.hl_vm_phys_pg_pack** %4, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 0
  store %struct.hl_vm* %8, %struct.hl_vm** %5, align 8
  %9 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %10 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %2
  %14 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %15 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %20 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %23 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %28 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gen_pool_free(i32 %21, i32 %26, i32 %29)
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %42, %18
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %34 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %39 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %38, i32 0, i32 0
  %40 = load i32, i32* @dram_pg_pool_do_release, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %31

45:                                               ; preds = %31
  br label %75

46:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %50 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %55 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %58 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %64 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gen_pool_free(i32 %56, i32 %62, i32 %65)
  %67 = load %struct.hl_vm*, %struct.hl_vm** %5, align 8
  %68 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %67, i32 0, i32 0
  %69 = load i32, i32* @dram_pg_pool_do_release, align 4
  %70 = call i32 @kref_put(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %53
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %47

74:                                               ; preds = %47
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %2
  %77 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %78 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kvfree(i32* %79)
  %81 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %4, align 8
  %82 = call i32 @kfree(%struct.hl_vm_phys_pg_pack* %81)
  ret void
}

declare dso_local i32 @gen_pool_free(i32, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.hl_vm_phys_pg_pack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
