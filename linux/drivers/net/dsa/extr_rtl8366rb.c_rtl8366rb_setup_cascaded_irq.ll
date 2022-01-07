; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_setup_cascaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_setup_cascaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"missing child interrupt-controller node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get parent IRQ\0A\00", align 1
@RTL8366RB_INTERRUPT_STATUS_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"can't read interrupt status\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"active high/rising IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"active low/falling IRQ\0A\00", align 1
@RTL8366RB_INTERRUPT_POLARITY = common dso_local global i32 0, align 4
@RTL8366RB_INTERRUPT_CONTROL_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"could not configure IRQ polarity\0A\00", align 1
@rtl8366rb_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"RTL8366RB\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unable to request irq: %d\0A\00", align 1
@RTL8366RB_NUM_INTERRUPT = common dso_local global i32 0, align 4
@rtl8366rb_irqdomain_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*)* @rtl8366rb_setup_cascaded_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_setup_cascaded_irq(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  %10 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %11 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device_node* @of_get_child_by_name(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %20 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %146

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_irq_get(%struct.device_node* %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %32 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  store i32 %43, i32* %7, align 4
  br label %142

44:                                               ; preds = %25
  %45 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %46 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RTL8366RB_INTERRUPT_STATUS_REG, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %54 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %142

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @irq_get_irq_data(i32 %58)
  %60 = call i64 @irqd_get_trigger_type(i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  switch i64 %61, label %73 [
    i64 128, label %62
    i64 130, label %62
    i64 131, label %67
    i64 129, label %67
  ]

62:                                               ; preds = %57, %57
  %63 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %64 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @dev_info(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %73

67:                                               ; preds = %57, %57
  %68 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %69 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @dev_info(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @RTL8366RB_INTERRUPT_POLARITY, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %57, %67, %62
  %74 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %75 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @RTL8366RB_INTERRUPT_CONTROL_REG, align 4
  %78 = load i32, i32* @RTL8366RB_INTERRUPT_POLARITY, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %85 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %142

88:                                               ; preds = %73
  %89 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %90 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @rtl8366rb_irq, align 4
  %94 = load i32, i32* @IRQF_ONESHOT, align 4
  %95 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %96 = call i32 @devm_request_threaded_irq(%struct.TYPE_4__* %91, i32 %92, i32* null, i32 %93, i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.realtek_smi* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %101 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  br label %142

105:                                              ; preds = %88
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = load i32, i32* @RTL8366RB_NUM_INTERRUPT, align 4
  %108 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %109 = call i32 @irq_domain_add_linear(%struct.device_node* %106, i32 %107, i32* @rtl8366rb_irqdomain_ops, %struct.realtek_smi* %108)
  %110 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %111 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %113 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %105
  %117 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %118 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %142

123:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %138, %123
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %127 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %132 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @irq_create_mapping(i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @irq_set_parent(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %124

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %116, %99, %83, %52, %42
  %143 = load %struct.device_node*, %struct.device_node** %4, align 8
  %144 = call i32 @of_node_put(%struct.device_node* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_4__*, i32, i32*, i32, i32, i8*, %struct.realtek_smi*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.realtek_smi*) #1

declare dso_local i32 @irq_set_parent(i32, i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
