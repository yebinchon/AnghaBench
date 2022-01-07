; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_find_dest_adap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_find_dest_adap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { %struct.cec_adapter**, %struct.cec_adapter* }
%struct.cec_adapter = type { i64 }

@MAX_OUTPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, %struct.cec_adapter*, i32)* @vivid_cec_find_dest_adap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_cec_find_dest_adap(%struct.vivid_dev* %0, %struct.cec_adapter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vivid_dev*, align 8
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %5, align 8
  store %struct.cec_adapter* %1, %struct.cec_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 15
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

12:                                               ; preds = %3
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 1
  %16 = load %struct.cec_adapter*, %struct.cec_adapter** %15, align 8
  %17 = icmp ne %struct.cec_adapter* %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 1
  %21 = load %struct.cec_adapter*, %struct.cec_adapter** %20, align 8
  %22 = icmp ne %struct.cec_adapter* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 1
  %26 = load %struct.cec_adapter*, %struct.cec_adapter** %25, align 8
  %27 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 1
  %33 = load %struct.cec_adapter*, %struct.cec_adapter** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @cec_has_log_addr(%struct.cec_adapter* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %94

38:                                               ; preds = %30, %23, %18, %12
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %90, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_OUTPUTS, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %45 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %44, i32 0, i32 0
  %46 = load %struct.cec_adapter**, %struct.cec_adapter*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cec_adapter*, %struct.cec_adapter** %46, i64 %48
  %50 = load %struct.cec_adapter*, %struct.cec_adapter** %49, align 8
  %51 = icmp ne %struct.cec_adapter* %50, null
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i1 [ false, %39 ], [ %51, %43 ]
  br i1 %53, label %54, label %93

54:                                               ; preds = %52
  %55 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 0
  %58 = load %struct.cec_adapter**, %struct.cec_adapter*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cec_adapter*, %struct.cec_adapter** %58, i64 %60
  %62 = load %struct.cec_adapter*, %struct.cec_adapter** %61, align 8
  %63 = icmp eq %struct.cec_adapter* %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %90

65:                                               ; preds = %54
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 0
  %68 = load %struct.cec_adapter**, %struct.cec_adapter*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cec_adapter*, %struct.cec_adapter** %68, i64 %70
  %72 = load %struct.cec_adapter*, %struct.cec_adapter** %71, align 8
  %73 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %90

77:                                               ; preds = %65
  %78 = load %struct.vivid_dev*, %struct.vivid_dev** %5, align 8
  %79 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %78, i32 0, i32 0
  %80 = load %struct.cec_adapter**, %struct.cec_adapter*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cec_adapter*, %struct.cec_adapter** %80, i64 %82
  %84 = load %struct.cec_adapter*, %struct.cec_adapter** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @cec_has_log_addr(%struct.cec_adapter* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %94

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %76, %64
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %39

93:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %88, %37, %11
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @cec_has_log_addr(%struct.cec_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
