; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c__scif_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c__scif_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scif_qp* }
%struct.scif_qp = type { i32 }
%struct.scifmsg = type { i32*, i32, i32 }

@SCIF_RECV_BLOCK = common dso_local global i32 0, align 4
@SCIFEP_CONNECTED = common dso_local global i64 0, align 8
@SCIFEP_DISCONNECTED = common dso_local global i64 0, align 8
@SCIF_CLIENT_RCVD = common dso_local global i32 0, align 4
@SCIF_ENDPT_QP_SIZE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32)* @_scif_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scif_recv(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scif_endpt*, align 8
  %11 = alloca %struct.scifmsg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scif_qp*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.scif_endpt*
  store %struct.scif_endpt* %18, %struct.scif_endpt** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %21 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.scif_qp*, %struct.scif_qp** %22, align 8
  store %struct.scif_qp* %23, %struct.scif_qp** %16, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SCIF_RECV_BLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 (...) @might_sleep()
  br label %30

30:                                               ; preds = %28, %4
  %31 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %32 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  br label %34

34:                                               ; preds = %152, %98, %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %39 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %40 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %45 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %46 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i1 [ false, %34 ], [ %50, %49 ]
  br i1 %52, label %53, label %153

53:                                               ; preds = %51
  %54 = load %struct.scif_qp*, %struct.scif_qp** %16, align 8
  %55 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @scif_rb_count(i32* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @min(i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.scif_qp*, %struct.scif_qp** %16, align 8
  %65 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %64, i32 0, i32 0
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @scif_rb_get_next(i32* %65, i8* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %70 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %60
  %75 = load %struct.scif_qp*, %struct.scif_qp** %16, align 8
  %76 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %75, i32 0, i32 0
  %77 = call i32 @scif_rb_update_read_ptr(i32* %76)
  %78 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %79 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %11, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @SCIF_CLIENT_RCVD, align 4
  %83 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %11, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %85 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %11, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %91 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @_scif_nodeqp_send(i32 %92, %struct.scifmsg* %11)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  br label %153

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  store i8* %105, i8** %6, align 8
  br label %34

106:                                              ; preds = %53
  %107 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %108 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %153

113:                                              ; preds = %106
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SCIF_RECV_BLOCK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %153

119:                                              ; preds = %113
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @SCIF_ENDPT_QP_SIZE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @min(i32 %120, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %125 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %124, i32 0, i32 1
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %128 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %131 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %132 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %119
  %136 = load %struct.scif_qp*, %struct.scif_qp** %16, align 8
  %137 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %136, i32 0, i32 0
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @scif_rb_count(i32* %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp sge i32 %139, %140
  br label %142

142:                                              ; preds = %135, %119
  %143 = phi i1 [ true, %119 ], [ %141, %135 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @wait_event_interruptible(i32 %129, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %147 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %146, i32 0, i32 1
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %153

152:                                              ; preds = %142
  br label %34

153:                                              ; preds = %151, %118, %112, %96, %51
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %15, align 4
  br label %186

162:                                              ; preds = %153
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %185, label %165

165:                                              ; preds = %162
  %166 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %167 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SCIFEP_CONNECTED, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %165
  %172 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %173 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SCIFEP_DISCONNECTED, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @ECONNRESET, align 4
  %179 = sub nsw i32 0, %178
  br label %183

180:                                              ; preds = %171
  %181 = load i32, i32* @ENOTCONN, align 4
  %182 = sub nsw i32 0, %181
  br label %183

183:                                              ; preds = %180, %177
  %184 = phi i32 [ %179, %177 ], [ %182, %180 ]
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %183, %165, %162
  br label %186

186:                                              ; preds = %185, %158
  %187 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %188 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %187, i32 0, i32 1
  %189 = call i32 @spin_unlock(i32* %188)
  %190 = load i32, i32* %15, align 4
  ret i32 %190
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_rb_count(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scif_rb_get_next(i32*, i8*, i32) #1

declare dso_local i32 @scif_rb_update_read_ptr(i32*) #1

declare dso_local i32 @_scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
