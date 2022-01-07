; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_mbx_async_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_mbx_async_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i64, i64, i32**, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vf crq need init in async\0A\00", align 1
@HCLGEVF_RESET_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"fetched unsupported(%d) message from arq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclgevf_mbx_async_handler(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %124, %1
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %142

25:                                               ; preds = %18
  %26 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %27 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %27, i32 0, i32 6
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %142

37:                                               ; preds = %25
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %41, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %115 [
    i32 130, label %51
    i32 129, label %68
    i32 131, label %91
    i32 128, label %105
  ]

51:                                               ; preds = %37
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @memcpy(i64* %9, i32* %56, i32 8)
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @hclgevf_update_link_status(%struct.hclgevf_dev* %61, i32 %62)
  %64 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @hclgevf_update_speed_duplex(%struct.hclgevf_dev* %64, i64 %65, i32 %66)
  br label %124

68:                                               ; preds = %37
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = call i32 @memcpy(i64* %78, i32* %80, i32 8)
  br label %90

82:                                               ; preds = %68
  %83 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %84 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i32 @memcpy(i64* %86, i32* %88, i32 8)
  br label %90

90:                                               ; preds = %82, %74
  br label %124

91:                                               ; preds = %37
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %97 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %96, i32 0, i32 4
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load i32, i32* @HCLGEVF_RESET_PENDING, align 4
  %100 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %101 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %100, i32 0, i32 3
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  %103 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %104 = call i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %103)
  br label %124

105:                                              ; preds = %37
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32* %110, i32** %7, align 8
  %111 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @hclgevf_update_port_base_vlan_info(%struct.hclgevf_dev* %111, i32 %112, i32* %113, i32 8)
  br label %124

115:                                              ; preds = %37
  %116 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %117 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %115, %105, %91, %90, %51
  %125 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %126 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %125, i32 0, i32 1
  %127 = call i32 @hclge_mbx_head_ptr_move_arq(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %126)
  %128 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %129 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = call i32 @atomic_dec(i32* %130)
  %132 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %133 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %137 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32*, i32** %135, i64 %139
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %6, align 8
  br label %18

142:                                              ; preds = %31, %18
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @hclgevf_update_link_status(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @hclgevf_update_speed_duplex(%struct.hclgevf_dev*, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_update_port_base_vlan_info(%struct.hclgevf_dev*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_mbx_head_ptr_move_arq(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
