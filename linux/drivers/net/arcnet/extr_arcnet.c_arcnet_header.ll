; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ArcProto = type { i32, i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32* }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"create header from %d to %d; protocol %d (%Xh); size %u.\0A\00", align 1
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"arcnet_header: Yikes!  skb->len(%d) != len(%d)!\0A\00", align 1
@ETH_P_ARCNET = common dso_local global i16 0, align 2
@arc_raw_proto = common dso_local global %struct.ArcProto* null, align 8
@D_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"arc_raw_proto used. proto='%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"arcnet_header: Yikes!  diff (%u) is not 2!\0A\00", align 1
@arc_proto_map = common dso_local global %struct.ArcProto** null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"building header for %02Xh using protocol '%c'\0A\00", align 1
@arc_proto_null = common dso_local global %struct.ArcProto zeroinitializer, align 8
@arc_bcast_proto = common dso_local global %struct.ArcProto* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"actually, let's use '%c' instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @arcnet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcnet_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arcnet_local*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ArcProto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %18)
  store %struct.arcnet_local* %19, %struct.arcnet_local** %14, align 8
  %20 = load i32, i32* @D_DURING, align 4
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i8*, i8** %12, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ -1, %28 ]
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ -1, %37 ]
  %40 = load i16, i16* %10, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %10, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, i32* %13, align 4
  %45 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %20, %struct.net_device* %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %39, i32 %41, i32 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @D_NORMAL, align 4
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %50, %38
  %65 = load i16, i16* %10, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @ETH_P_ARCNET, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.ArcProto*, %struct.ArcProto** @arc_raw_proto, align 8
  store %struct.ArcProto* %71, %struct.ArcProto** %17, align 8
  %72 = load i32, i32* @D_DEBUG, align 4
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %75 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %72, %struct.net_device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i8*, i8** %11, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ %83, %80 ], [ 0, %84 ]
  store i32 %86, i32* %15, align 4
  br label %154

87:                                               ; preds = %64
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %115, label %90

90:                                               ; preds = %87
  %91 = load i16, i16* %10, align 2
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i64 @skb_push(%struct.sk_buff* %92, i32 2)
  %94 = inttoptr i64 %93 to i16*
  store i16 %91, i16* %94, align 2
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = icmp ne i32 %101, 2
  br i1 %102, label %103, label %114

103:                                              ; preds = %90
  %104 = load i32, i32* @D_NORMAL, align 4
  %105 = load %struct.net_device*, %struct.net_device** %9, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %104, %struct.net_device* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %103, %90
  store i32 -2, i32* %7, align 4
  br label %163

115:                                              ; preds = %87
  %116 = load i8*, i8** %11, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %15, align 4
  %119 = load %struct.arcnet_local*, %struct.arcnet_local** %14, align 8
  %120 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %16, align 4
  %126 = load %struct.ArcProto**, %struct.ArcProto*** @arc_proto_map, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ArcProto*, %struct.ArcProto** %126, i64 %128
  %130 = load %struct.ArcProto*, %struct.ArcProto** %129, align 8
  store %struct.ArcProto* %130, %struct.ArcProto** %17, align 8
  %131 = load i32, i32* @D_DURING, align 4
  %132 = load %struct.net_device*, %struct.net_device** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %135 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %131, %struct.net_device* %132, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %136)
  %138 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %139 = icmp eq %struct.ArcProto* %138, @arc_proto_null
  br i1 %139, label %140, label %152

140:                                              ; preds = %115
  %141 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  %142 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %143 = icmp ne %struct.ArcProto* %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* @D_DURING, align 4
  %146 = load %struct.net_device*, %struct.net_device** %9, align 8
  %147 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  %148 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %145, %struct.net_device* %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  store %struct.ArcProto* %151, %struct.ArcProto** %17, align 8
  br label %152

152:                                              ; preds = %144, %140, %115
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %85
  %155 = load %struct.ArcProto*, %struct.ArcProto** %17, align 8
  %156 = getelementptr inbounds %struct.ArcProto, %struct.ArcProto* %155, i32 0, i32 1
  %157 = load i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i16, i32)** %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = load %struct.net_device*, %struct.net_device** %9, align 8
  %160 = load i16, i16* %10, align 2
  %161 = load i32, i32* %15, align 4
  %162 = call i32 %157(%struct.sk_buff* %158, %struct.net_device* %159, i16 zeroext %160, i32 %161)
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %154, %114
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
