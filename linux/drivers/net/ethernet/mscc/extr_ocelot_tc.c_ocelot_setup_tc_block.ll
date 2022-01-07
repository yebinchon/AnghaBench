; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_tc.c_ocelot_setup_tc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_tc.c_ocelot_setup_tc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.flow_block_offload = type { i32, i64, i32, i32*, i32 }
%struct.flow_block_cb = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"tc_block command %d, binder_type %d\0A\00", align 1
@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@ocelot_setup_tc_block_cb_ig = common dso_local global i32* null, align 8
@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i64 0, align 8
@ocelot_setup_tc_block_cb_eg = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ocelot_block_cb_list = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_port*, %struct.flow_block_offload*)* @ocelot_setup_tc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_setup_tc_block(%struct.ocelot_port* %0, %struct.flow_block_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca %struct.flow_block_offload*, align 8
  %6 = alloca %struct.flow_block_cb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ocelot_port* %0, %struct.ocelot_port** %4, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %5, align 8
  %9 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %10 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %13 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %16 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @netdev_dbg(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17)
  %19 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %20 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32*, i32** @ocelot_setup_tc_block_cb_ig, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %27 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %30 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %34 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32*, i32** @ocelot_setup_tc_block_cb_eg, align 8
  store i32* %39, i32** %7, align 8
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %114

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %46 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %45, i32 0, i32 3
  store i32* @ocelot_block_cb_list, i32** %46, align 8
  %47 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %48 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %111 [
    i32 129, label %50
    i32 128, label %89
  ]

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %53 = call i32 @flow_block_cb_is_busy(i32* %51, %struct.ocelot_port* %52, i32* @ocelot_block_cb_list)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %114

58:                                               ; preds = %50
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %61 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %62 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32* %59, %struct.ocelot_port* %60, %struct.ocelot_port* %61, i32* null)
  store %struct.flow_block_cb* %62, %struct.flow_block_cb** %6, align 8
  %63 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %64 = call i32 @IS_ERR(%struct.flow_block_cb* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.flow_block_cb* %67)
  store i32 %68, i32* %3, align 4
  br label %114

69:                                               ; preds = %58
  %70 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %71 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %72 = call i32 @ocelot_setup_tc_block_flower_bind(%struct.ocelot_port* %70, %struct.flow_block_offload* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %77 = call i32 @flow_block_cb_free(%struct.flow_block_cb* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %114

79:                                               ; preds = %69
  %80 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %81 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %82 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %80, %struct.flow_block_offload* %81)
  %83 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %84 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %83, i32 0, i32 0
  %85 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %86 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @list_add_tail(i32* %84, i32* %87)
  store i32 0, i32* %3, align 4
  br label %114

89:                                               ; preds = %44
  %90 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %91 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %95 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %92, i32* %93, %struct.ocelot_port* %94)
  store %struct.flow_block_cb* %95, %struct.flow_block_cb** %6, align 8
  %96 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %97 = icmp ne %struct.flow_block_cb* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %114

101:                                              ; preds = %89
  %102 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %103 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %104 = call i32 @ocelot_setup_tc_block_flower_unbind(%struct.ocelot_port* %102, %struct.flow_block_offload* %103)
  %105 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %106 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %107 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %105, %struct.flow_block_offload* %106)
  %108 = load %struct.flow_block_cb*, %struct.flow_block_cb** %6, align 8
  %109 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %108, i32 0, i32 0
  %110 = call i32 @list_del(i32* %109)
  store i32 0, i32* %3, align 4
  br label %114

111:                                              ; preds = %44
  %112 = load i32, i32* @EOPNOTSUPP, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %101, %98, %79, %75, %66, %55, %40
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @flow_block_cb_is_busy(i32*, %struct.ocelot_port*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32*, %struct.ocelot_port*, %struct.ocelot_port*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @ocelot_setup_tc_block_flower_bind(%struct.ocelot_port*, %struct.flow_block_offload*) #1

declare dso_local i32 @flow_block_cb_free(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32*, %struct.ocelot_port*) #1

declare dso_local i32 @ocelot_setup_tc_block_flower_unbind(%struct.ocelot_port*, %struct.flow_block_offload*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
