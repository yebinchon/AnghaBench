; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_of_mux_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_of_mux_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpts = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.clk_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cpts-refclk-mux\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mux-clock %s must have parents\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ti,mux-tbl\00", align 1
@clk_hw_unregister_mux = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"add clkmux unreg action %d\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@of_clk_del_provider = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"add clkmux provider unreg action %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpts*, %struct.device_node*)* @cpts_of_mux_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpts_of_mux_clk_setup(%struct.cpts* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpts*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.cpts* %0, %struct.cpts** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @of_clk_get_parent_count(%struct.device_node* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.cpts*, %struct.cpts** %4, align 8
  %26 = getelementptr inbounds %struct.cpts, %struct.cpts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %142

32:                                               ; preds = %19
  %33 = load %struct.cpts*, %struct.cpts** %4, align 8
  %34 = getelementptr inbounds %struct.cpts, %struct.cpts* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kzalloc(i32 %35, i32 %39, i32 %40)
  %42 = bitcast i8* %41 to i8**
  store i8** %42, i8*** %7, align 8
  %43 = load %struct.cpts*, %struct.cpts** %4, align 8
  %44 = getelementptr inbounds %struct.cpts, %struct.cpts* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kzalloc(i32 %45, i32 %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load i8**, i8*** %7, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %32
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %142

61:                                               ; preds = %55
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @of_clk_parent_fill(%struct.device_node* %62, i8** %63, i32 %64)
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @of_property_read_variable_u32_array(%struct.device_node* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %142

74:                                               ; preds = %61
  %75 = load %struct.cpts*, %struct.cpts** %4, align 8
  %76 = getelementptr inbounds %struct.cpts, %struct.cpts* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = getelementptr inbounds %struct.device_node, %struct.device_node* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.cpts*, %struct.cpts** %4, align 8
  %84 = getelementptr inbounds %struct.cpts, %struct.cpts* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %11, align 8
  %88 = call %struct.device_node* @clk_hw_register_mux_table(i32 %77, i32 %80, i8** %81, i32 %82, i32 0, i32* %86, i32 0, i32 31, i32 0, i32* %87, i32* null)
  %89 = bitcast %struct.device_node* %88 to %struct.clk_hw*
  store %struct.clk_hw* %89, %struct.clk_hw** %9, align 8
  %90 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %91 = bitcast %struct.clk_hw* %90 to %struct.device_node*
  %92 = call i64 @IS_ERR(%struct.device_node* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %74
  %95 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %96 = bitcast %struct.clk_hw* %95 to %struct.device_node*
  %97 = call i32 @PTR_ERR(%struct.device_node* %96)
  store i32 %97, i32* %10, align 4
  br label %142

98:                                               ; preds = %74
  %99 = load %struct.cpts*, %struct.cpts** %4, align 8
  %100 = getelementptr inbounds %struct.cpts, %struct.cpts* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @clk_hw_unregister_mux, align 8
  %103 = inttoptr i64 %102 to void (i8*)*
  %104 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %105 = bitcast %struct.clk_hw* %104 to %struct.device_node*
  %106 = call i32 @devm_add_action_or_reset(i32 %101, void (i8*)* %103, %struct.device_node* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.cpts*, %struct.cpts** %4, align 8
  %111 = getelementptr inbounds %struct.cpts, %struct.cpts* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %142

115:                                              ; preds = %98
  %116 = load %struct.device_node*, %struct.device_node** %6, align 8
  %117 = load i32, i32* @of_clk_hw_simple_get, align 4
  %118 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %119 = bitcast %struct.clk_hw* %118 to %struct.device_node*
  %120 = call i32 @of_clk_add_hw_provider(%struct.device_node* %116, i32 %117, %struct.device_node* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %142

124:                                              ; preds = %115
  %125 = load %struct.cpts*, %struct.cpts** %4, align 8
  %126 = getelementptr inbounds %struct.cpts, %struct.cpts* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* @of_clk_del_provider, align 8
  %129 = inttoptr i64 %128 to void (i8*)*
  %130 = load %struct.device_node*, %struct.device_node** %6, align 8
  %131 = call i32 @devm_add_action_or_reset(i32 %127, void (i8*)* %129, %struct.device_node* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %124
  %135 = load %struct.cpts*, %struct.cpts** %4, align 8
  %136 = getelementptr inbounds %struct.cpts, %struct.cpts* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %142

140:                                              ; preds = %124
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %146

142:                                              ; preds = %134, %123, %109, %94, %73, %58, %24
  %143 = load %struct.device_node*, %struct.device_node** %6, align 8
  %144 = call i32 @of_node_put(%struct.device_node* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %140, %18
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_clk_parent_fill(%struct.device_node*, i8**, i32) #1

declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i32, i32) #1

declare dso_local %struct.device_node* @clk_hw_register_mux_table(i32, i32, i8**, i32, i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device_node*) #1

declare dso_local i32 @PTR_ERR(%struct.device_node*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, void (i8*)*, %struct.device_node*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
