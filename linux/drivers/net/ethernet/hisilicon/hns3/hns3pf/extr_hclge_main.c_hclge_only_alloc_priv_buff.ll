; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_only_alloc_priv_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_only_alloc_priv_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, i32 }
%struct.hclge_pkt_buf_alloc = type { %struct.TYPE_4__, %struct.hclge_priv_buf* }
%struct.TYPE_4__ = type { i64 }
%struct.hclge_priv_buf = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NEED_RESERVE_TC_NUM = common dso_local global i32 0, align 4
@BUF_RESERVE_PERCENT = common dso_local global i32 0, align 4
@BUF_MAX_PERCENT = common dso_local global i32 0, align 4
@HCLGE_BUF_SIZE_UNIT = common dso_local global i32 0, align 4
@HCLGE_MAX_TC_NUM = common dso_local global i32 0, align 4
@COMPENSATE_BUFFER = common dso_local global i32 0, align 4
@COMPENSATE_HALF_MPS_NUM = common dso_local global i32 0, align 4
@PRIV_WL_GAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*)* @hclge_only_alloc_priv_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_only_alloc_priv_buff(%struct.hclge_dev* %0, %struct.hclge_pkt_buf_alloc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_priv_buf*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_pkt_buf_alloc* %1, %struct.hclge_pkt_buf_alloc** %5, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %16 = call i32 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc* %15)
  %17 = sub nsw i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %19 = call i32 @hclge_get_tc_num(%struct.hclge_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @NEED_RESERVE_TC_NUM, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BUF_RESERVE_PERCENT, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @BUF_MAX_PERCENT, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 15360
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 5, %45
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @HCLGE_BUF_SIZE_UNIT, align 4
  %50 = call i32 @round_up(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HCLGE_BUF_SIZE_UNIT, align 4
  %53 = call i32 @round_down(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %117

58:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %110, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %59
  %64 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %65 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %64, i32 0, i32 1
  %66 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %66, i64 %68
  store %struct.hclge_priv_buf* %69, %struct.hclge_priv_buf** %11, align 8
  %70 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %71 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %73 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %76 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %79 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %63
  br label %110

88:                                               ; preds = %63
  %89 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %90 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %93 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  %99 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %100 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %103 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 6144
  %107 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %11, align 8
  %108 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %88, %87
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %59

113:                                              ; preds = %59
  %114 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %115 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %57
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_get_tc_num(%struct.hclge_dev*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
