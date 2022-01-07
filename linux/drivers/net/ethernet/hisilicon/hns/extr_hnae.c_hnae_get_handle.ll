; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_get_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_buf_ops = type { i32 }
%struct.hnae_handle = type { i32, i32*, i32, i32, %struct.hnae_buf_ops*, %struct.device*, %struct.hnae_ae_dev* }
%struct.hnae_ae_dev = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae_handle* (%struct.hnae_ae_dev*, i32)* }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@hnae_bops = common dso_local global %struct.hnae_buf_ops zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hnae_handle* @hnae_get_handle(%struct.device* %0, %struct.fwnode_handle* %1, i32 %2, %struct.hnae_buf_ops* %3) #0 {
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hnae_buf_ops*, align 8
  %10 = alloca %struct.hnae_ae_dev*, align 8
  %11 = alloca %struct.hnae_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.hnae_buf_ops* %3, %struct.hnae_buf_ops** %9, align 8
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %16 = call %struct.hnae_ae_dev* @find_ae(%struct.fwnode_handle* %15)
  store %struct.hnae_ae_dev* %16, %struct.hnae_ae_dev** %10, align 8
  %17 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %18 = icmp ne %struct.hnae_ae_dev* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.hnae_handle* @ERR_PTR(i32 %21)
  store %struct.hnae_handle* %22, %struct.hnae_handle** %5, align 8
  br label %121

23:                                               ; preds = %4
  %24 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %25 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.hnae_handle* (%struct.hnae_ae_dev*, i32)*, %struct.hnae_handle* (%struct.hnae_ae_dev*, i32)** %27, align 8
  %29 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.hnae_handle* %28(%struct.hnae_ae_dev* %29, i32 %30)
  store %struct.hnae_handle* %31, %struct.hnae_handle** %11, align 8
  %32 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %33 = call i64 @IS_ERR(%struct.hnae_handle* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %37 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  %39 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  store %struct.hnae_handle* %39, %struct.hnae_handle** %5, align 8
  br label %121

40:                                               ; preds = %23
  %41 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %42 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %43 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %42, i32 0, i32 6
  store %struct.hnae_ae_dev* %41, %struct.hnae_ae_dev** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %46 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %45, i32 0, i32 5
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %9, align 8
  %48 = icmp ne %struct.hnae_buf_ops* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %9, align 8
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi %struct.hnae_buf_ops* [ %50, %49 ], [ @hnae_bops, %51 ]
  %54 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %55 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %54, i32 0, i32 4
  store %struct.hnae_buf_ops* %53, %struct.hnae_buf_ops** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %58 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %80, %52
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %62 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %67 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %68 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %75 = call i32 @hnae_init_queue(%struct.hnae_handle* %66, i32 %73, %struct.hnae_ae_dev* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %96

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %85 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__module_get(i32 %86)
  %88 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %89 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %88, i32 0, i32 2
  %90 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %91 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %90, i32 0, i32 2
  %92 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %93 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %92, i32 0, i32 1
  %94 = call i32 @hnae_list_add(i32* %89, i32* %91, i32* %93)
  %95 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  store %struct.hnae_handle* %95, %struct.hnae_handle** %5, align 8
  br label %121

96:                                               ; preds = %78
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %111, %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.hnae_handle*, %struct.hnae_handle** %11, align 8
  %104 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hnae_fini_queue(i32 %109)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %13, align 4
  br label %99

114:                                              ; preds = %99
  %115 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %10, align 8
  %116 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %115, i32 0, i32 0
  %117 = call i32 @put_device(i32* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.hnae_handle* @ERR_PTR(i32 %119)
  store %struct.hnae_handle* %120, %struct.hnae_handle** %5, align 8
  br label %121

121:                                              ; preds = %114, %83, %35, %19
  %122 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  ret %struct.hnae_handle* %122
}

declare dso_local %struct.hnae_ae_dev* @find_ae(%struct.fwnode_handle*) #1

declare dso_local %struct.hnae_handle* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.hnae_handle*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @hnae_init_queue(%struct.hnae_handle*, i32, %struct.hnae_ae_dev*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @hnae_list_add(i32*, i32*, i32*) #1

declare dso_local i32 @hnae_fini_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
