; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.asic3 = type { i32*, i32, i32, i32, i32 }

@ASIC3_GPIO_LEVEL_TRIGGER = common dso_local global i32 0, align 4
@ASIC3_GPIO_EDGE_TRIGGER = common dso_local global i32 0, align 4
@ASIC3_GPIO_TRIGGER_TYPE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"irq type not changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @asic3_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_gpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asic3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = call %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.asic3* %14, %struct.asic3** %5, align 8
  %15 = load %struct.asic3*, %struct.asic3** %5, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @asic3_irq_to_bank(%struct.asic3* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.asic3*, %struct.asic3** %5, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @asic3_irq_to_index(%struct.asic3* %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.asic3*, %struct.asic3** %5, align 8
  %28 = getelementptr inbounds %struct.asic3, %struct.asic3* %27, i32 0, i32 2
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @raw_spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.asic3*, %struct.asic3** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ASIC3_GPIO_LEVEL_TRIGGER, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @asic3_read_register(%struct.asic3* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.asic3*, %struct.asic3** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ASIC3_GPIO_EDGE_TRIGGER, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @asic3_read_register(%struct.asic3* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.asic3*, %struct.asic3** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ASIC3_GPIO_TRIGGER_TYPE, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @asic3_read_register(%struct.asic3* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.asic3*, %struct.asic3** %5, align 8
  %49 = getelementptr inbounds %struct.asic3, %struct.asic3* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %52 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.asic3*, %struct.asic3** %5, align 8
  %55 = getelementptr inbounds %struct.asic3, %struct.asic3* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = ashr i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %50, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %47
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %164

73:                                               ; preds = %2
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %163

85:                                               ; preds = %73
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.asic3*, %struct.asic3** %5, align 8
  %94 = getelementptr inbounds %struct.asic3, %struct.asic3* %93, i32 0, i32 4
  %95 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %96 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.asic3*, %struct.asic3** %5, align 8
  %99 = getelementptr inbounds %struct.asic3, %struct.asic3* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  %102 = call i64 @asic3_gpio_get(i32* %94, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %89
  %105 = load i32, i32* %11, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %113

109:                                              ; preds = %89
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.asic3*, %struct.asic3** %5, align 8
  %116 = getelementptr inbounds %struct.asic3, %struct.asic3* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %119 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.asic3*, %struct.asic3** %5, align 8
  %122 = getelementptr inbounds %struct.asic3, %struct.asic3* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %120, %123
  %125 = ashr i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %117, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %114
  store i32 %129, i32* %127, align 4
  br label %162

130:                                              ; preds = %85
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %161

143:                                              ; preds = %130
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  br label %160

155:                                              ; preds = %143
  %156 = load %struct.asic3*, %struct.asic3** %5, align 8
  %157 = getelementptr inbounds %struct.asic3, %struct.asic3* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dev_notice(i32 %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %155, %147
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %113
  br label %163

163:                                              ; preds = %162, %77
  br label %164

164:                                              ; preds = %163, %66
  %165 = load %struct.asic3*, %struct.asic3** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @ASIC3_GPIO_LEVEL_TRIGGER, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @asic3_write_register(%struct.asic3* %165, i32 %168, i32 %169)
  %171 = load %struct.asic3*, %struct.asic3** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @ASIC3_GPIO_EDGE_TRIGGER, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @asic3_write_register(%struct.asic3* %171, i32 %174, i32 %175)
  %177 = load %struct.asic3*, %struct.asic3** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @ASIC3_GPIO_TRIGGER_TYPE, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @asic3_write_register(%struct.asic3* %177, i32 %180, i32 %181)
  %183 = load %struct.asic3*, %struct.asic3** %5, align 8
  %184 = getelementptr inbounds %struct.asic3, %struct.asic3* %183, i32 0, i32 2
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @raw_spin_unlock_irqrestore(i32* %184, i64 %185)
  ret i32 0
}

declare dso_local %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @asic3_irq_to_bank(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_irq_to_index(%struct.asic3*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i32) #1

declare dso_local i64 @asic3_gpio_get(i32*, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
