; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_la_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_la_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }

@TP_DBG_LA_CONFIG_A = common dso_local global i32 0, align 4
@TPLA_SIZE = common dso_local global i32 0, align 4
@tp_la_show2 = common dso_local global i32 0, align 4
@tp_la_show3 = common dso_local global i32 0, align 4
@tp_la_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tp_la_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tp_la_open(%struct.inode* %0, %struct.file* %1) #0 {
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
  %11 = load %struct.adapter*, %struct.adapter** %7, align 8
  %12 = load i32, i32* @TP_DBG_LA_CONFIG_A, align 4
  %13 = call i32 @t4_read_reg(%struct.adapter* %11, i32 %12)
  %14 = call i32 @DBGLAMODE_G(i32 %13)
  switch i32 %14, label %27 [
    i32 2, label %15
    i32 3, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i32, i32* @TPLA_SIZE, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* @tp_la_show2, align 4
  %20 = call %struct.seq_tab* @seq_open_tab(%struct.file* %16, i32 %18, i32 8, i32 0, i32 %19)
  store %struct.seq_tab* %20, %struct.seq_tab** %6, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = load i32, i32* @TPLA_SIZE, align 4
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* @tp_la_show3, align 4
  %26 = call %struct.seq_tab* @seq_open_tab(%struct.file* %22, i32 %24, i32 8, i32 0, i32 %25)
  store %struct.seq_tab* %26, %struct.seq_tab** %6, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i32, i32* @TPLA_SIZE, align 4
  %30 = load i32, i32* @tp_la_show, align 4
  %31 = call %struct.seq_tab* @seq_open_tab(%struct.file* %28, i32 %29, i32 4, i32 0, i32 %30)
  store %struct.seq_tab* %31, %struct.seq_tab** %6, align 8
  br label %32

32:                                               ; preds = %27, %21, %15
  %33 = load %struct.seq_tab*, %struct.seq_tab** %6, align 8
  %34 = icmp ne %struct.seq_tab* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.adapter*, %struct.adapter** %7, align 8
  %40 = load %struct.seq_tab*, %struct.seq_tab** %6, align 8
  %41 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @t4_tp_read_la(%struct.adapter* %39, i32* %43, i32* null)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DBGLAMODE_G(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_tp_read_la(%struct.adapter*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
