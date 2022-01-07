; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugfs.c_nfp_net_debugfs_vnic_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugfs.c_nfp_net_debugfs_vnic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32*, i32, i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }

@nfp_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vnic%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ctrl-vnic\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@nfp_rx_q_fops = common dso_local global i32 0, align 4
@nfp_xdp_q_fops = common dso_local global i32 0, align 4
@nfp_tx_q_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_debugfs_vnic_add(%struct.nfp_net* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load i32, i32* @nfp_dir, align 4
  %12 = call i64 @IS_ERR_OR_NULL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %111

15:                                               ; preds = %2
  %16 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %17 = call i64 @nfp_net_is_data_vnic(%struct.nfp_net* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %21 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = call i8* @debugfs_create_dir(i8* %29, %struct.dentry* %30)
  %32 = bitcast i8* %31 to %struct.dentry*
  %33 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %34 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %33, i32 0, i32 5
  store %struct.dentry* %32, %struct.dentry** %34, align 8
  %35 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 5
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %37)
  %39 = bitcast i8* %38 to %struct.dentry*
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %40)
  %42 = bitcast i8* %41 to %struct.dentry*
  store %struct.dentry* %42, %struct.dentry** %7, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %43)
  %45 = bitcast i8* %44 to %struct.dentry*
  store %struct.dentry* %45, %struct.dentry** %6, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.dentry* %46)
  %48 = bitcast i8* %47 to %struct.dentry*
  store %struct.dentry* %48, %struct.dentry** %8, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %81, %28
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %52 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %55 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @min(i32 %53, i32 %56)
  %58 = icmp slt i32 %50, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %49
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @debugfs_create_file(i8* %63, i32 256, %struct.dentry* %64, i32* %70, i32* @nfp_rx_q_fops)
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %75 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @debugfs_create_file(i8* %72, i32 256, %struct.dentry* %73, i32* %79, i32* @nfp_xdp_q_fops)
  br label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %49

84:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %88 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %91 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @min(i32 %89, i32 %92)
  %94 = icmp slt i32 %86, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %85
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @sprintf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %102 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @debugfs_create_file(i8* %99, i32 256, %struct.dentry* %100, i32* %106, i32* @nfp_tx_q_fops)
  br label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %85

111:                                              ; preds = %14, %85
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i64 @nfp_net_is_data_vnic(%struct.nfp_net*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
