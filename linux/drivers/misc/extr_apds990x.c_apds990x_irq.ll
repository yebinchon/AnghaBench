; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i64, i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_3__*, i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@APDS990X_STATUS = common dso_local global i32 0, align 4
@APDS990X_ST_AINT = common dso_local global i32 0, align 4
@APDS990X_CDATAL = common dso_local global i32 0, align 4
@APDS990X_IRDATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lux0_input\00", align 1
@APDS990X_ST_PINT = common dso_local global i32 0, align 4
@APDS990X_PDATAL = common dso_local global i32 0, align 4
@APDS_PROX_RANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"prox0_raw\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apds990x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.apds990x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.apds990x_chip*
  store %struct.apds990x_chip* %9, %struct.apds990x_chip** %5, align 8
  %10 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %11 = load i32, i32* @APDS990X_STATUS, align 4
  %12 = call i32 @apds990x_read_byte(%struct.apds990x_chip* %10, i32 %11, i32* %6)
  %13 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @apds990x_ack_int(%struct.apds990x_chip* %13, i32 %14)
  %16 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %17 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %16, i32 0, i32 8
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %20 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %19, i32 0, i32 9
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_suspended(%struct.TYPE_4__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %144, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @APDS990X_ST_AINT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %25
  %31 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %32 = load i32, i32* @APDS990X_CDATAL, align 4
  %33 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %34 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %33, i32 0, i32 0
  %35 = call i32 @apds990x_read_word(%struct.apds990x_chip* %31, i32 %32, i64* %34)
  %36 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %37 = load i32, i32* @APDS990X_IRDATAL, align 4
  %38 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %39 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %38, i32 0, i32 1
  %40 = call i32 @apds990x_read_word(%struct.apds990x_chip* %36, i32 %37, i64* %39)
  %41 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %42 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %45 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %47 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %48 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %51 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @apds990x_get_lux(%struct.apds990x_chip* %46, i64 %49, i64 %52)
  %54 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %55 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 4
  %56 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %57 = call i64 @apds990x_calc_again(%struct.apds990x_chip* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %30
  %60 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %61 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %64 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %66 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %65, i32 0, i32 4
  store i32 0, i32* %66, align 8
  %67 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %68 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %67, i32 0, i32 12
  %69 = call i32 @wake_up(i32* %68)
  %70 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %71 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %70, i32 0, i32 9
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @sysfs_notify(i32* %74, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %59, %30
  br label %77

77:                                               ; preds = %76, %25
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @APDS990X_ST_PINT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %143

82:                                               ; preds = %77
  %83 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %84 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %82
  %88 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %89 = load i32, i32* @APDS990X_CDATAL, align 4
  %90 = call i32 @apds990x_read_word(%struct.apds990x_chip* %88, i32 %89, i64* %7)
  %91 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %92 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %98 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %103 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  br label %110

104:                                              ; preds = %95, %87
  %105 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %106 = load i32, i32* @APDS990X_PDATAL, align 4
  %107 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %108 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %107, i32 0, i32 6
  %109 = call i32 @apds990x_read_word(%struct.apds990x_chip* %105, i32 %106, i64* %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %112 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %113 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @apds990x_refresh_pthres(%struct.apds990x_chip* %111, i64 %114)
  %116 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %117 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %120 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %125 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %124, i32 0, i32 6
  store i64 0, i64* %125, align 8
  br label %136

126:                                              ; preds = %110
  %127 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %128 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i64, i64* @APDS_PROX_RANGE, align 8
  %133 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %134 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %133, i32 0, i32 6
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %126
  br label %136

136:                                              ; preds = %135, %123
  %137 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %138 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %137, i32 0, i32 9
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @sysfs_notify(i32* %141, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %136, %82, %77
  br label %144

144:                                              ; preds = %143, %2
  %145 = load %struct.apds990x_chip*, %struct.apds990x_chip** %5, align 8
  %146 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %145, i32 0, i32 8
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %148
}

declare dso_local i32 @apds990x_read_byte(%struct.apds990x_chip*, i32, i32*) #1

declare dso_local i32 @apds990x_ack_int(%struct.apds990x_chip*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_suspended(%struct.TYPE_4__*) #1

declare dso_local i32 @apds990x_read_word(%struct.apds990x_chip*, i32, i64*) #1

declare dso_local i32 @apds990x_get_lux(%struct.apds990x_chip*, i64, i64) #1

declare dso_local i64 @apds990x_calc_again(%struct.apds990x_chip*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @apds990x_refresh_pthres(%struct.apds990x_chip*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
