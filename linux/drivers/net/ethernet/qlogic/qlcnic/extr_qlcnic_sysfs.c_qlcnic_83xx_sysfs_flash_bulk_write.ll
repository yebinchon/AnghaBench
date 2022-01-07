; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_bulk_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_bulk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_WRITE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i32, i64)* @qlcnic_83xx_sysfs_flash_bulk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_sysfs_flash_bulk_write(%struct.qlcnic_adapter* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kcalloc(i64 %15, i32 1, i32 %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %160

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @qlcnic_swap32_buffer(i32* %28, i32 %29)
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %13, align 8
  store i8* %35, i8** %14, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %37 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %160

44:                                               ; preds = %23
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %44
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %57 = call i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %64 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %160

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %44
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %128, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %73 = sdiv i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %131

75:                                               ; preds = %69
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %81 = call i32 @qlcnic_83xx_flash_bulk_write(%struct.qlcnic_adapter* %76, i32 %77, i32* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %75
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %84
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %97 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @kfree(i8* %101)
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %160

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %84
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %112 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %160

115:                                              ; preds = %75
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %14, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = add i64 %122, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %69

131:                                              ; preds = %69
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %139 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %131
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %144 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %151 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %150)
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %160

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %131
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 @kfree(i8* %156)
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %159 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %158)
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %155, %147, %108, %100, %60, %39, %20
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @qlcnic_swap32_buffer(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_flash_bulk_write(%struct.qlcnic_adapter*, i32, i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
