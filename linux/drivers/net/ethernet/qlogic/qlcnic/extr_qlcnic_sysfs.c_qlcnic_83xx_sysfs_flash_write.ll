; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i32, i64)* @qlcnic_83xx_sysfs_flash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_sysfs_flash_write(%struct.qlcnic_adapter* %0, i8* %1, i32 %2, i64 %3) #0 {
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
  br label %152

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i64, i64* %9, align 8
  %27 = udiv i64 %26, 4
  %28 = call i32 @qlcnic_swap32_buffer(i32* %25, i64 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @memcpy(i8* %29, i8* %30, i64 %31)
  %33 = load i8*, i8** %13, align 8
  store i8* %33, i8** %14, align 8
  %34 = load i64, i64* %9, align 8
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %152

45:                                               ; preds = %23
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = call i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %65 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %152

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %45
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %120, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %70
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = call i32 @qlcnic_83xx_flash_write32(%struct.qlcnic_adapter* %75, i32 %76, i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %74
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %82
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %95 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %102 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %152

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %82
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %110 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %152

113:                                              ; preds = %74
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8* %115, i8** %14, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, 4
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %70

123:                                              ; preds = %70
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %125 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %131 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %123
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %136 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @kfree(i8* %140)
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %143 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %152

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %123
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %151 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %147, %139, %106, %98, %61, %40, %20
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @qlcnic_swap32_buffer(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_flash_write32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
