; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htcpld_data = type { i32, i64, i64, %struct.htcpld_chip* }
%struct.htcpld_chip = type { i32, i64, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"htcpld is null in ISR\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chip %d is null in ISR\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"client %d is null in ISR\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to read from chip: %d\0A\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"fire IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @htcpld_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.htcpld_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.htcpld_chip*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.htcpld_data*
  store %struct.htcpld_data* %19, %struct.htcpld_data** %6, align 8
  %20 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %21 = icmp ne %struct.htcpld_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %173

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %148, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %29 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %151

32:                                               ; preds = %26
  %33 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %34 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %33, i32 0, i32 3
  %35 = load %struct.htcpld_chip*, %struct.htcpld_chip** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %35, i64 %37
  store %struct.htcpld_chip* %38, %struct.htcpld_chip** %10, align 8
  %39 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %40 = icmp ne %struct.htcpld_chip* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %148

44:                                               ; preds = %32
  %45 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %46 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %148

50:                                               ; preds = %44
  %51 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %52 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %51, i32 0, i32 7
  %53 = load %struct.i2c_client*, %struct.i2c_client** %52, align 8
  store %struct.i2c_client* %53, %struct.i2c_client** %11, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = icmp ne %struct.i2c_client* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %148

59:                                               ; preds = %50
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %62 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %69 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %148

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %13, align 8
  %76 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %77 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %76, i32 0, i32 4
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %81 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %85 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %87 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %86, i32 0, i32 4
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %144, %73
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %93 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %147

96:                                               ; preds = %90
  %97 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %98 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %17, align 4
  %100 = load %struct.htcpld_chip*, %struct.htcpld_chip** %10, align 8
  %101 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %4, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = lshr i64 %105, %107
  %109 = and i64 %108, 1
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %15, align 4
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = lshr i64 %111, %113
  %115 = and i64 %114, 1
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %96
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %122, %119, %96
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133, %122
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @generic_handle_irq(i32 %141)
  br label %143

143:                                              ; preds = %138, %133, %130, %127
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %90

147:                                              ; preds = %90
  br label %148

148:                                              ; preds = %147, %67, %56, %49, %41
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %26

151:                                              ; preds = %26
  %152 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %153 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %158 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @gpio_set_value(i64 %159, i32 1)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %163 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %168 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @gpio_set_value(i64 %169, i32 0)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %22
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
