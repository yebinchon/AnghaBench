; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, i64 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_MEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: media is %s%s\0A\00", align 1
@NC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"unconnected, link down or incompatible connection\00", align 1
@TP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@ANS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"TP/Nway\00", align 1
@BNC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"BNC\00", align 1
@AUI = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"AUI\00", align 1
@BNC_AUI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"BNC/AUI\00", align 1
@EXT_SIA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"EXT SIA\00", align 1
@_100Mb = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"100Mb/s\00", align 1
@_10Mb = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"10Mb/s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" full duplex.\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_dbg_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_dbg_media(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %4)
  store %struct.de4x5_private* %5, %struct.de4x5_private** %3, align 8
  %6 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %7 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %10 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %114

13:                                               ; preds = %1
  %14 = load i32, i32* @de4x5_debug, align 4
  %15 = load i32, i32* @DEBUG_MEDIA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %108

18:                                               ; preds = %13
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %99

28:                                               ; preds = %18
  %29 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %30 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ANS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %95

42:                                               ; preds = %35
  %43 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %44 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BNC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %93

49:                                               ; preds = %42
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AUI, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %91

56:                                               ; preds = %49
  %57 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %58 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BNC_AUI, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %89

63:                                               ; preds = %56
  %64 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %65 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EXT_SIA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %87

70:                                               ; preds = %63
  %71 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %72 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @_100Mb, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %85

77:                                               ; preds = %70
  %78 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %79 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @_10Mb, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  br label %85

85:                                               ; preds = %77, %76
  %86 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %76 ], [ %84, %77 ]
  br label %87

87:                                               ; preds = %85, %69
  %88 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %69 ], [ %86, %85 ]
  br label %89

89:                                               ; preds = %87, %62
  %90 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %62 ], [ %88, %87 ]
  br label %91

91:                                               ; preds = %89, %55
  %92 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %55 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %48
  %94 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %48 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %41
  %96 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %41 ], [ %94, %93 ]
  br label %97

97:                                               ; preds = %95, %34
  %98 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %34 ], [ %96, %95 ]
  br label %99

99:                                               ; preds = %97, %27
  %100 = phi i8* [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %27 ], [ %98, %97 ]
  %101 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %102 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)
  %107 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %100, i8* %106)
  br label %108

108:                                              ; preds = %99, %13
  %109 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %110 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %113 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %1
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
