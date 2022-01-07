; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32, i32, i32, i32 }

@HINIC_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HINIC_RSS_INDIR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*)* @hinic_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_rss_init(%struct.hinic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %3, align 8
  %11 = load i32, i32* @HINIC_RSS_KEY_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kcalloc(i32 %18, i32 4, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %94

26:                                               ; preds = %1
  %27 = mul nuw i64 4, %12
  %28 = trunc i64 %27 to i32
  %29 = call i32 @netdev_rss_key_fill(i32* %14, i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %44, %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @HINIC_RSS_INDIR_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ethtool_rxfh_indir_default(i32 %35, i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @hinic_rss_set_template_tbl(%struct.hinic_dev* %48, i32 %49, i32* %14)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %90

54:                                               ; preds = %47
  %55 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @hinic_rss_set_indir_tbl(%struct.hinic_dev* %55, i32 %56, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %90

62:                                               ; preds = %54
  %63 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hinic_set_rss_type(%struct.hinic_dev* %63, i32 %64, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %90

72:                                               ; preds = %62
  %73 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hinic_rss_set_hash_engine(%struct.hinic_dev* %73, i32 %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %90

82:                                               ; preds = %72
  %83 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @hinic_rss_cfg(%struct.hinic_dev* %83, i32 1, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %88, %81, %71, %61, %53
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %23
  %95 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #2

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #2

declare dso_local i32 @hinic_rss_set_template_tbl(%struct.hinic_dev*, i32, i32*) #2

declare dso_local i32 @hinic_rss_set_indir_tbl(%struct.hinic_dev*, i32, i32*) #2

declare dso_local i32 @hinic_set_rss_type(%struct.hinic_dev*, i32, i32) #2

declare dso_local i32 @hinic_rss_set_hash_engine(%struct.hinic_dev*, i32, i32) #2

declare dso_local i32 @hinic_rss_cfg(%struct.hinic_dev*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
