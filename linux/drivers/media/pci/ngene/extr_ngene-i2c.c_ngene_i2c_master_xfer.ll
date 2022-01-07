; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.ngene_channel = type { i32, %struct.ngene* }
%struct.ngene = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ngene_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ngene_channel*, align 8
  %9 = alloca %struct.ngene*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call i64 @i2c_get_adapdata(%struct.i2c_adapter* %10)
  %12 = inttoptr i64 %11 to %struct.ngene_channel*
  store %struct.ngene_channel* %12, %struct.ngene_channel** %8, align 8
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %8, align 8
  %14 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %13, i32 0, i32 1
  %15 = load %struct.ngene*, %struct.ngene** %14, align 8
  store %struct.ngene* %15, %struct.ngene** %9, align 8
  %16 = load %struct.ngene*, %struct.ngene** %9, align 8
  %17 = getelementptr inbounds %struct.ngene, %struct.ngene* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ngene*, %struct.ngene** %9, align 8
  %20 = load %struct.ngene_channel*, %struct.ngene_channel** %8, align 8
  %21 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ngene_i2c_set_bus(%struct.ngene* %19, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %68

26:                                               ; preds = %3
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @I2C_M_RD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @I2C_M_RD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %34
  %43 = load %struct.ngene*, %struct.ngene** %9, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 0
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 1
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 1
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ngene_command_i2c_read(%struct.ngene* %43, i32 %47, i32* %51, i32 %55, i32* %59, i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %42
  br label %132

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %34, %26, %3
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 0
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @I2C_M_RD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %71
  %80 = load %struct.ngene*, %struct.ngene** %9, align 8
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i64 0
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i64 0
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i64 0
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ngene_command_i2c_write(%struct.ngene* %80, i32 %84, i32* %88, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %79
  br label %132

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %71, %68
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i64 0
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @I2C_M_RD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %100
  %109 = load %struct.ngene*, %struct.ngene** %9, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 0
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i64 0
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i64 0
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ngene_command_i2c_read(%struct.ngene* %109, i32 %113, i32* null, i32 0, i32* %117, i32 %121, i32 0)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %108
  br label %132

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %100, %97
  %127 = load %struct.ngene*, %struct.ngene** %9, align 8
  %128 = getelementptr inbounds %struct.ngene, %struct.ngene* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %124, %95, %66
  %133 = load %struct.ngene*, %struct.ngene** %9, align 8
  %134 = getelementptr inbounds %struct.ngene, %struct.ngene* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %132, %126
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ngene_i2c_set_bus(%struct.ngene*, i32) #1

declare dso_local i32 @ngene_command_i2c_read(%struct.ngene*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngene_command_i2c_write(%struct.ngene*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
