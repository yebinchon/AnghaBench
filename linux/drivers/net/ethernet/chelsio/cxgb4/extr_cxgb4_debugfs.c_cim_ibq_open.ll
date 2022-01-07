; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_ibq_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_ibq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }
%struct.adapter = type { i32 }

@CIM_IBQ_SIZE = common dso_local global i32 0, align 4
@cimq_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cim_ibq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_ibq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_tab*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = and i64 %13, 7
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.adapter*
  store %struct.adapter* %22, %struct.adapter** %9, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i32, i32* @CIM_IBQ_SIZE, align 4
  %25 = load i32, i32* @cimq_show, align 4
  %26 = call %struct.seq_tab* @seq_open_tab(%struct.file* %23, i32 %24, i32 16, i32 0, i32 %25)
  store %struct.seq_tab* %26, %struct.seq_tab** %7, align 8
  %27 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %28 = icmp ne %struct.seq_tab* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.adapter*, %struct.adapter** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  %36 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* @CIM_IBQ_SIZE, align 4
  %40 = mul nsw i32 %39, 4
  %41 = call i32 @t4_read_cim_ibq(%struct.adapter* %33, i32 %34, i32* %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = call i32 @seq_release_private(%struct.inode* %45, %struct.file* %46)
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_cim_ibq(%struct.adapter*, i32, i32*, i32) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
