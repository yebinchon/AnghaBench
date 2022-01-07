; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-core.c_max8925_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_irq_data = type { i32, i8 }
%struct.irq_data = type { i32 }
%struct.max8925_chip = type { i32, i32, i32, i32, i32 }

@max8925_irq_sync_unlock.cache_chg = internal global [2 x i8] c"\FF\FF", align 1
@max8925_irq_sync_unlock.cache_on = internal global [2 x i8] c"\FF\FF", align 1
@max8925_irq_sync_unlock.cache_rtc = internal global i8 -1, align 1
@max8925_irq_sync_unlock.cache_tsc = internal global i8 -1, align 1
@max8925_irqs = common dso_local global %struct.max8925_irq_data* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"wrong IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @max8925_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8925_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.max8925_chip*, align 8
  %4 = alloca %struct.max8925_irq_data*, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.max8925_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.max8925_chip* %11, %struct.max8925_chip** %3, align 8
  %12 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 0), align 1
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 1), align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 0), align 1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 1), align 1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = load i8, i8* @max8925_irq_sync_unlock.cache_rtc, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* @max8925_irq_sync_unlock.cache_tsc, align 1
  store i8 %21, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %105, %1
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** @max8925_irqs, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.max8925_irq_data* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %22
  %28 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** @max8925_irqs, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %28, i64 %30
  store %struct.max8925_irq_data* %31, %struct.max8925_irq_data** %4, align 8
  %32 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %33 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %99 [
    i32 133, label %35
    i32 132, label %46
    i32 131, label %57
    i32 130, label %68
    i32 129, label %79
    i32 128, label %89
  ]

35:                                               ; preds = %27
  %36 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %37 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 4
  %39 = zext i8 %38 to i32
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  br label %104

46:                                               ; preds = %27
  %47 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %48 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 4
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, %51
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  br label %104

57:                                               ; preds = %27
  %58 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %59 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = xor i32 %61, -1
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %104

68:                                               ; preds = %27
  %69 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %70 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 4
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, -1
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, %73
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %104

79:                                               ; preds = %27
  %80 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %81 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 4
  %83 = zext i8 %82 to i32
  %84 = xor i32 %83, -1
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %7, align 1
  br label %104

89:                                               ; preds = %27
  %90 = load %struct.max8925_irq_data*, %struct.max8925_irq_data** %4, align 8
  %91 = getelementptr inbounds %struct.max8925_irq_data, %struct.max8925_irq_data* %90, i32 0, i32 1
  %92 = load i8, i8* %91, align 4
  %93 = zext i8 %92 to i32
  %94 = xor i32 %93, -1
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %8, align 1
  br label %104

99:                                               ; preds = %27
  %100 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %101 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %89, %79, %68, %57, %46, %35
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %22

108:                                              ; preds = %22
  %109 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 0), align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 0), align 1
  %118 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %119 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = call i32 @max8925_reg_write(i32 %120, i32 133, i8 zeroext %122)
  br label %124

124:                                              ; preds = %115, %108
  %125 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 1), align 1
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_chg, i64 0, i64 1), align 1
  %134 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %135 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @max8925_reg_write(i32 %136, i32 132, i8 zeroext %138)
  br label %140

140:                                              ; preds = %131, %124
  %141 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 0), align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 0), align 1
  %150 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %151 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @max8925_reg_write(i32 %152, i32 131, i8 zeroext %154)
  br label %156

156:                                              ; preds = %147, %140
  %157 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 1), align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %165 = load i8, i8* %164, align 1
  store i8 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @max8925_irq_sync_unlock.cache_on, i64 0, i64 1), align 1
  %166 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %167 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @max8925_reg_write(i32 %168, i32 130, i8 zeroext %170)
  br label %172

172:                                              ; preds = %163, %156
  %173 = load i8, i8* @max8925_irq_sync_unlock.cache_rtc, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %7, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i8, i8* %7, align 1
  store i8 %179, i8* @max8925_irq_sync_unlock.cache_rtc, align 1
  %180 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %181 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i8, i8* %7, align 1
  %184 = call i32 @max8925_reg_write(i32 %182, i32 129, i8 zeroext %183)
  br label %185

185:                                              ; preds = %178, %172
  %186 = load i8, i8* @max8925_irq_sync_unlock.cache_tsc, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* %8, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load i8, i8* %8, align 1
  store i8 %192, i8* @max8925_irq_sync_unlock.cache_tsc, align 1
  %193 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %194 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i8, i8* %8, align 1
  %197 = call i32 @max8925_reg_write(i32 %195, i32 128, i8 zeroext %196)
  br label %198

198:                                              ; preds = %191, %185
  %199 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %200 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  ret void
}

declare dso_local %struct.max8925_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.max8925_irq_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @max8925_reg_write(i32, i32, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
