; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_irq_data = type { i32, i8, i8 }
%struct.irq_data = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@pm860x_irq_sync_unlock.cached = internal global [3 x i8] zeroinitializer, align 1
@CHIP_PM8607 = common dso_local global i64 0, align 8
@pm860x_irqs = common dso_local global %struct.pm860x_irq_data* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"wrong IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @pm860x_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm860x_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_irq_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.pm860x_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.pm860x_chip* %9, %struct.pm860x_chip** %3, align 8
  %10 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %11 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_PM8607, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %16, i32 0, i32 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %21 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %20, i32 0, i32 3
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi %struct.i2c_client* [ %18, %15 ], [ %22, %19 ]
  store %struct.i2c_client* %24, %struct.i2c_client** %5, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %36, %23
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* @pm860x_irq_sync_unlock.cached, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %25

39:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %119, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** @pm860x_irqs, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.pm860x_irq_data* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %122

45:                                               ; preds = %40
  %46 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** @pm860x_irqs, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %46, i64 %48
  store %struct.pm860x_irq_data* %49, %struct.pm860x_irq_data** %4, align 8
  %50 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %51 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %113 [
    i32 130, label %53
    i32 129, label %73
    i32 128, label %93
  ]

53:                                               ; preds = %45
  %54 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %55 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 4
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, %58
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  %64 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %65 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %67
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %118

73:                                               ; preds = %45
  %74 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %75 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 4
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, -1
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, %78
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %85 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %84, i32 0, i32 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %87
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %118

93:                                               ; preds = %45
  %94 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %95 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %94, i32 0, i32 1
  %96 = load i8, i8* %95, align 4
  %97 = zext i8 %96 to i32
  %98 = xor i32 %97, -1
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, %98
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  %104 = load %struct.pm860x_irq_data*, %struct.pm860x_irq_data** %4, align 8
  %105 = getelementptr inbounds %struct.pm860x_irq_data, %struct.pm860x_irq_data* %104, i32 0, i32 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, %107
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %118

113:                                              ; preds = %45
  %114 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %115 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %93, %73, %53
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %40

122:                                              ; preds = %40
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %155, %122
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x i8], [3 x i8]* @pm860x_irq_sync_unlock.cached, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %131, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %126
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i8], [3 x i8]* @pm860x_irq_sync_unlock.cached, i64 0, i64 %144
  store i8 %142, i8* %145, align 1
  %146 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 130, %147
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @pm860x_reg_write(%struct.i2c_client* %146, i32 %148, i8 zeroext %152)
  br label %154

154:                                              ; preds = %138, %126
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %123

158:                                              ; preds = %123
  %159 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %160 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %159, i32 0, i32 1
  %161 = call i32 @mutex_unlock(i32* %160)
  ret void
}

declare dso_local %struct.pm860x_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pm860x_irq_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pm860x_reg_write(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
