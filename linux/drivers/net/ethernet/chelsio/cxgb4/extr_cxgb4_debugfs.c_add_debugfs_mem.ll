; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_add_debugfs_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_add_debugfs_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@mem_debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i8*, i32, i32)* @add_debugfs_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_debugfs_mem(%struct.adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = bitcast %struct.adapter* %13 to i8*
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr i8, i8* %14, i64 %16
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 %18, 20
  %20 = call i32 @debugfs_create_file_size(i8* %9, i32 256, i32 %12, i8* %17, i32* @mem_debugfs_fops, i32 %19)
  ret void
}

declare dso_local i32 @debugfs_create_file_size(i8*, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
