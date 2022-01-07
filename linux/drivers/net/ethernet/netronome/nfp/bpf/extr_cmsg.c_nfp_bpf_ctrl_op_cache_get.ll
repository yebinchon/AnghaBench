; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_op_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_op_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_bpf_map = type { i64, i32, %struct.TYPE_4__*, i64, i32, %struct.nfp_app_bpf*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.nfp_app_bpf = type { i32 }
%struct.TYPE_3__ = type { %struct.bpf_map }
%struct.bpf_map = type { i32, i32 }
%struct.cmsg_reply_map_op = type { i32 }

@NFP_CCM_TYPE_BPF_MAP_LOOKUP = common dso_local global i32 0, align 4
@NFP_CCM_TYPE_BPF_MAP_GETNEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_bpf_map*, i32, i32*, i32*, i32*, i32*)* @nfp_bpf_ctrl_op_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_ctrl_op_cache_get(%struct.nfp_bpf_map* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.nfp_bpf_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bpf_map*, align 8
  %14 = alloca %struct.nfp_app_bpf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cmsg_reply_map_op*, align 8
  %19 = alloca i8*, align 8
  store %struct.nfp_bpf_map* %0, %struct.nfp_bpf_map** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %21 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %20, i32 0, i32 6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.bpf_map* %23, %struct.bpf_map** %13, align 8
  %24 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %25 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %24, i32 0, i32 5
  %26 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %25, align 8
  store %struct.nfp_app_bpf* %26, %struct.nfp_app_bpf** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @nfp_bpf_ctrl_op_cache_fill(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %14, align 8
  %32 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 1, %34 ]
  store i32 %36, i32* %17, align 4
  %37 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %38 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %41 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %45 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @nfp_bpf_ctrl_op_cache_invalidate(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %141

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @nfp_bpf_ctrl_op_cache_capable(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %153

59:                                               ; preds = %54
  %60 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %61 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %153

65:                                               ; preds = %59
  %66 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %67 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 (...) @ktime_get_ns()
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %146

72:                                               ; preds = %65
  %73 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %74 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast i8* %78 to %struct.cmsg_reply_map_op*
  store %struct.cmsg_reply_map_op* %79, %struct.cmsg_reply_map_op** %18, align 8
  %80 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %18, align 8
  %81 = getelementptr inbounds %struct.cmsg_reply_map_op, %struct.cmsg_reply_map_op* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  store i32 %83, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %137, %72
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %140

88:                                               ; preds = %84
  %89 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %14, align 8
  %90 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %18, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i8* @nfp_bpf_ctrl_reply_key(%struct.nfp_app_bpf* %89, %struct.cmsg_reply_map_op* %90, i32 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %96 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @memcmp(i8* %93, i32* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %137

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @NFP_CCM_TYPE_BPF_MAP_LOOKUP, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %14, align 8
  %108 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %18, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i8* @nfp_bpf_ctrl_reply_val(%struct.nfp_app_bpf* %107, %struct.cmsg_reply_map_op* %108, i32 %109)
  %111 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %112 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32* %106, i8* %110, i32 %113)
  br label %115

115:                                              ; preds = %105, %101
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @NFP_CCM_TYPE_BPF_MAP_GETNEXT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, 1
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %140

125:                                              ; preds = %119
  %126 = load i32*, i32** %10, align 8
  %127 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %14, align 8
  %128 = load %struct.cmsg_reply_map_op*, %struct.cmsg_reply_map_op** %18, align 8
  %129 = load i32, i32* %15, align 4
  %130 = add i32 %129, 1
  %131 = call i8* @nfp_bpf_ctrl_reply_key(%struct.nfp_app_bpf* %127, %struct.cmsg_reply_map_op* %128, i32 %130)
  %132 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %133 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i32* %126, i8* %131, i32 %134)
  br label %136

136:                                              ; preds = %125, %115
  store i32 0, i32* %17, align 4
  br label %153

137:                                              ; preds = %100
  %138 = load i32, i32* %15, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %84

140:                                              ; preds = %124, %84
  br label %153

141:                                              ; preds = %53
  %142 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %143 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %71
  %147 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %148 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = call i32 @dev_consume_skb_any(%struct.TYPE_4__* %149)
  %151 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %152 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %151, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %152, align 8
  br label %153

153:                                              ; preds = %146, %140, %136, %64, %58
  %154 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %155 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load i32, i32* %17, align 4
  ret i32 %157
}

declare dso_local i64 @nfp_bpf_ctrl_op_cache_fill(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nfp_bpf_ctrl_op_cache_invalidate(i32) #1

declare dso_local i32 @nfp_bpf_ctrl_op_cache_capable(i32) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @nfp_bpf_ctrl_reply_key(%struct.nfp_app_bpf*, %struct.cmsg_reply_map_op*, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @nfp_bpf_ctrl_reply_val(%struct.nfp_app_bpf*, %struct.cmsg_reply_map_op*, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
