; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_ma_la_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_ma_la_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }

@CIM_MALA_SIZE = common dso_local global i32 0, align 4
@cim_ma_la_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cim_ma_la_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_ma_la_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_tab*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = load i32, i32* @CIM_MALA_SIZE, align 4
  %13 = mul nsw i32 2, %12
  %14 = load i32, i32* @cim_ma_la_show, align 4
  %15 = call %struct.seq_tab* @seq_open_tab(%struct.file* %11, i32 %13, i32 20, i32 1, i32 %14)
  store %struct.seq_tab* %15, %struct.seq_tab** %6, align 8
  %16 = load %struct.seq_tab*, %struct.seq_tab** %6, align 8
  %17 = icmp ne %struct.seq_tab* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %7, align 8
  %23 = load %struct.seq_tab*, %struct.seq_tab** %6, align 8
  %24 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.seq_tab*, %struct.seq_tab** %6, align 8
  %28 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* @CIM_MALA_SIZE, align 4
  %32 = mul nsw i32 5, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = call i32 @t4_cim_read_ma_la(%struct.adapter* %22, i32* %26, i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_cim_read_ma_la(%struct.adapter*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
