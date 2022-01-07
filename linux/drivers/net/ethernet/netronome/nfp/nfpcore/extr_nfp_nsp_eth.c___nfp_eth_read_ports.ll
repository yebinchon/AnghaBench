; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c___nfp_eth_read_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c___nfp_eth_read_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_eth_table = type { i32, i32* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp = type { i32 }
%union.eth_table_entry = type { i32 }

@NSP_ETH_TABLE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading port table failed %d\0A\00", align 1
@NSP_ETH_MAX_COUNT = common dso_local global i32 0, align 4
@NSP_ETH_PORT_LANES_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"table entry count reported (%d) does not match entries present (%d)\0A\00", align 1
@ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_eth_table* @__nfp_eth_read_ports(%struct.nfp_cpp* %0, %struct.nfp_nsp* %1) #0 {
  %3 = alloca %struct.nfp_eth_table*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca %struct.nfp_nsp*, align 8
  %6 = alloca %union.eth_table_entry*, align 8
  %7 = alloca %struct.nfp_eth_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store %struct.nfp_nsp* %1, %struct.nfp_nsp** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @NSP_ETH_TABLE_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %union.eth_table_entry*
  store %union.eth_table_entry* %15, %union.eth_table_entry** %6, align 8
  %16 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %17 = icmp ne %union.eth_table_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.nfp_eth_table* null, %struct.nfp_eth_table** %3, align 8
  br label %141

19:                                               ; preds = %2
  %20 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %21 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %22 = load i32, i32* @NSP_ETH_TABLE_SIZE, align 4
  %23 = call i32 @nfp_nsp_read_eth_table(%struct.nfp_nsp* %20, %union.eth_table_entry* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (%struct.nfp_cpp*, i8*, i32, ...) @nfp_err(%struct.nfp_cpp* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %138

30:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NSP_ETH_MAX_COUNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %36, i64 %38
  %40 = bitcast %union.eth_table_entry* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NSP_ETH_PORT_LANES_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (%struct.nfp_cpp*, i8*, i32, ...) @nfp_err(%struct.nfp_cpp* %60, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  br label %138

64:                                               ; preds = %55, %52
  %65 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %66 = load i32, i32* @ports, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @struct_size(%struct.nfp_eth_table* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kzalloc(i32 %68, i32 %69)
  %71 = bitcast i8* %70 to %struct.nfp_eth_table*
  store %struct.nfp_eth_table* %71, %struct.nfp_eth_table** %7, align 8
  %72 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %73 = icmp ne %struct.nfp_eth_table* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %138

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %78 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %109, %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @NSP_ETH_MAX_COUNT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %79
  %84 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %84, i64 %86
  %88 = bitcast %union.eth_table_entry* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NSP_ETH_PORT_LANES_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %83
  %94 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %95 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %95, i64 %97
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %101 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = call i32 @nfp_eth_port_translate(%struct.nfp_nsp* %94, %union.eth_table_entry* %98, i32 %99, i32* %106)
  br label %108

108:                                              ; preds = %93, %83
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %79

112:                                              ; preds = %79
  %113 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %114 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %115 = call i32 @nfp_eth_calc_port_geometry(%struct.nfp_cpp* %113, %struct.nfp_eth_table* %114)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %131, %112
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %119 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %124 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  %125 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @nfp_eth_calc_port_type(%struct.nfp_cpp* %123, i32* %129)
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %136 = call i32 @kfree(%union.eth_table_entry* %135)
  %137 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %7, align 8
  store %struct.nfp_eth_table* %137, %struct.nfp_eth_table** %3, align 8
  br label %141

138:                                              ; preds = %74, %59, %26
  %139 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %140 = call i32 @kfree(%union.eth_table_entry* %139)
  store %struct.nfp_eth_table* null, %struct.nfp_eth_table** %3, align 8
  br label %141

141:                                              ; preds = %138, %134, %18
  %142 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %3, align 8
  ret %struct.nfp_eth_table* %142
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_nsp_read_eth_table(%struct.nfp_nsp*, %union.eth_table_entry*, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, ...) #1

declare dso_local i32 @struct_size(%struct.nfp_eth_table*, i32, i32) #1

declare dso_local i32 @nfp_eth_port_translate(%struct.nfp_nsp*, %union.eth_table_entry*, i32, i32*) #1

declare dso_local i32 @nfp_eth_calc_port_geometry(%struct.nfp_cpp*, %struct.nfp_eth_table*) #1

declare dso_local i32 @nfp_eth_calc_port_type(%struct.nfp_cpp*, i32*) #1

declare dso_local i32 @kfree(%union.eth_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
