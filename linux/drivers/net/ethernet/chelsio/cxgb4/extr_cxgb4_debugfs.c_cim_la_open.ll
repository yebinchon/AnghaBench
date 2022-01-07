; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.seq_tab = type { i64 }

@UP_UP_DBG_LA_CFG_A = common dso_local global i32 0, align 4
@UPDBGLACAPTPCONLY_F = common dso_local global i32 0, align 4
@cim_la_show_pc_t6 = common dso_local global i32 0, align 4
@cim_la_show_t6 = common dso_local global i32 0, align 4
@cim_la_show_3in1 = common dso_local global i32 0, align 4
@cim_la_show = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cim_la_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_la_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_tab*, align 8
  %9 = alloca %struct.adapter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %9, align 8
  %13 = load %struct.adapter*, %struct.adapter** %9, align 8
  %14 = load i32, i32* @UP_UP_DBG_LA_CFG_A, align 4
  %15 = call i32 @t4_cim_read(%struct.adapter* %13, i32 %14, i32 1, i32* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load %struct.adapter*, %struct.adapter** %9, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_t6(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load %struct.adapter*, %struct.adapter** %9, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 10
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @UPDBGLACAPTPCONLY_F, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @cim_la_show_pc_t6, align 4
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @cim_la_show_t6, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call %struct.seq_tab* @seq_open_tab(%struct.file* %28, i32 %34, i32 40, i32 1, i32 %44)
  store %struct.seq_tab* %45, %struct.seq_tab** %8, align 8
  br label %64

46:                                               ; preds = %20
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = load %struct.adapter*, %struct.adapter** %9, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @UPDBGLACAPTPCONLY_F, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @cim_la_show_3in1, align 4
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @cim_la_show, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call %struct.seq_tab* @seq_open_tab(%struct.file* %47, i32 %52, i32 32, i32 1, i32 %62)
  store %struct.seq_tab* %63, %struct.seq_tab** %8, align 8
  br label %64

64:                                               ; preds = %61, %43
  %65 = load %struct.seq_tab*, %struct.seq_tab** %8, align 8
  %66 = icmp ne %struct.seq_tab* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.adapter*, %struct.adapter** %9, align 8
  %72 = load %struct.seq_tab*, %struct.seq_tab** %8, align 8
  %73 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @t4_cim_read_la(%struct.adapter* %71, i32* %75, i32* null)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = call i32 @seq_release_private(%struct.inode* %80, %struct.file* %81)
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %67, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local %struct.seq_tab* @seq_open_tab(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @t4_cim_read_la(%struct.adapter*, i32*, i32*) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
